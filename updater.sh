#!/usr/bin/env bash

download_site="https://downloads.openwrt.org"
openwrt_versions=(
  "LEDE::17.01.4"
  "chaos_calmer::15.05.1"
  "chaos_calmer::15.05"
  "barrier_breaker::14.07"
)

depends=(xmlstarlet)
function is_cmd_exists {
  if type -a "${1}" &>/dev/null; then
    return 0
  else
    return 1
  fi
}
function check_depends {
  for c in ${depends}; do
    if ! is_cmd_exists "${c}"; then
      abort "Missing command: ${c}"
    fi
  done
}
check_depends

do_list_support_versions() {
  for v in ${openwrt_versions[@]}; do
    local code="$(echo ${v} | awk -F:: '{print $1}')"
    local version="$(echo ${v} | awk -F:: '{print $2}')"
    echo "${code} ${version}"
  done
}

# arg1: <url>
_dump_page() {
  curl -L "${1}" 2>/dev/null 2>/dev/null | sed 's/<hr>//'
}
do_gen_sdk_sources() {
  declare -a openwrt_sdk_sources
  for v in ${openwrt_versions[@]}; do
    local code="$(echo ${v} | awk -F:: '{print $1}')"
    local version="$(echo ${v} | awk -F:: '{print $2}')"
    local base_url
    if [ "${version%%.*}" -ge 17 ]; then
      base_url="${download_site}/releases/${version}/targets"
    else
      base_url="${download_site}/${code}/${version}"
    fi
    local arch_array=$(_dump_page "${base_url}/" | xmlstarlet select -t -m '//td[@class="n"]/a' -v . --nl)
    for a in ${arch_array}; do
      echo "${v}/${a}: ${base_url}/${a}/generic/"
      sdk_file=$(_dump_page "${base_url}/${a}/generic/" | xmlstarlet select -t -m '//td[@class="n"]/a' -v . --nl | grep 'openwrt-sdk\|OpenWrt-SDK\|lede-sdk' | head -1)
      if [ -n "${sdk_file}" ]; then
        openwrt_sdk_sources+=("${version}::${a}::${base_url}/${a}/generic/${sdk_file}")
      else
        echo "ERROR: could not get sdk url from ${base_url}/${a}/generic/"
      fi
    done
  done
  echo "openwrt_sdk_sources=(" > openwrt_sdk_sources_gen.sh
  for s in "${openwrt_sdk_sources[@]}"; do
    echo "  \"${s}\"" >> openwrt_sdk_sources_gen.sh
  done
  echo ")" >> openwrt_sdk_sources_gen.sh
  echo "Done, see result in openwrt_sdk_sources_gen.sh"
}

do_list_sdk_sources() {
  source ./openwrt_sdk_sources_gen.sh
  for s in "${openwrt_sdk_sources[@]}"; do
    local version="$(echo ${s} | awk -F:: '{print $1}')"
    local arch="$(echo ${s} | awk -F:: '{print $2}')"
    local sdkurl="$(echo ${s} | awk -F:: '{print $3}')"
    echo "${version} ${arch} ${sdkurl}"
  done
}

do_gen_dockerfiles() {
  source ./openwrt_sdk_sources_gen.sh
  mkdir -p _dockerfiles
  for s in "${openwrt_sdk_sources[@]}"; do
    local version="$(echo ${s} | awk -F:: '{print $1}')"
    local arch="$(echo ${s} | awk -F:: '{print $2}')"
    local sdkurl="$(echo ${s} | awk -F:: '{print $3}')"
    local outfile=_dockerfiles/Dockerfile-"${version}-${arch}"
    cp -vf Dockerfile.tpl "${outfile}"
    sed -i -e "s|ENV OPENWRT_SDK_VERSION.*$|ENV OPENWRT_SDK_VERSION ${version}|" \
      -e "s|ENV OPENWRT_SDK_ARCH.*$|ENV OPENWRT_SDK_ARCH ${arch}|" \
      -e "s|ENV OPENWRT_SDK_URL.*$|ENV OPENWRT_SDK_URL ${sdkurl}|" \
      "${outfile}"
  done
  echo "Done, see result in folder dockerfiles"
}

is_tag_exists() {
  if git show-ref --verify -q --tags -d refs/tags/"$1"; then
    return 0
  else
    return 1
  fi
}
do_gen_git_tags() {
  for f in _dockerfiles/Dockerfile-*; do
    local tag="${f##_dockerfiles/Dockerfile-}"
    if is_tag_exists "${tag}"; then
      echo "Ignore tag ${tag}, already exists"
    else
      cp -vf ${f} Dockerfile
      git add -f Dockerfile
      git commit -m "Update Dockerfile for ${tag}"
      git tag "${tag}"
    fi
  done
}

do_push_git_branches() {
  for r in $(git remote); do
    for b in $(git show-ref --heads | awk '{print $2}' | sed 's|refs/heads/||'); do
      echo "=> git push ${r} ${b}:${b}"
      git push "${r}" "${b}:${b}"
    done
  done
}

do_push_git_tags() {
  # use this instead of "git push --tags" to trigger docker hub
  # autobuild
  for r in $(git remote); do
    for t in $(git tag); do
      echo "=> git push ${r} ${t}:${t}"
      git push "${r}" "${t}:${t}" --force
      sleep 5
    done
  done
}

do_${1}
