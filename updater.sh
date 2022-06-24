#!/usr/bin/env bash

download_site="https://downloads.openwrt.org"

depends=(xmlstarlet)
abort() {
    echo "$@"
    echo "Aborting..."
    exit 1
}
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

# arg1: <url>
_dump_page() {
  curl -L "${1}" 2>/dev/null 2>/dev/null | sed 's/<hr>//'
}

# arg1: <version> arg2: [codename]
cmd_gen_sdk_sources() {
  if [ $# -lt 1 ]; then
    abort "Need at least one argument"
  fi
  local version="${1}"
  local codename="${2}"
  local sdk_sources=()
  local base_url
  if [ "${version%%.*}" -ge 17 ]; then
    base_url="${download_site}/releases/${version}/targets"
  else
    base_url="${download_site}/${codename}/${version}"
  fi
  local arch_array=$(_dump_page "${base_url}/" | xmlstarlet select -t -m '//td[@class="n"]/a' -v . --nl)
  for a in ${arch_array}; do
    local subarch_array=$(_dump_page "${base_url}/${a}/" | xmlstarlet select -t -m '//td[@class="n"]/a' -v . --nl)
    for s in ${subarch_array}; do
      local url="${base_url}/${a}/${s}"
      if [ x"${s}" = x"generic" ]; then
        echo "${version}-${a}: ${url}"
      else
        echo "${version}-${a}-${s}: ${url}"
      fi
      sdk_file=$(_dump_page "${url}/" | xmlstarlet select -t -m '//td[@class="n"]/a' -v . --nl | grep 'openwrt-sdk\|OpenWrt-SDK\|lede-sdk' | head -1)
      if [ -n "${sdk_file}" ]; then
        if [ x"${s}" = x"generic" ]; then
          sdk_sources+=("${version}::${a}::${url}/${sdk_file}")
        else
          sdk_sources+=("${version}::${a}-${s}::${url}/${sdk_file}")
        fi
      else
        echo "ERROR: could not get sdk url from ${url}/"
      fi
    done
  done
  local result_file="sdk_sources/${version}.sh"
  echo "sdk_sources=(" > "${result_file}"
  for s in "${sdk_sources[@]}"; do
    echo "  \"${s}\"" >> "${result_file}"
  done
  echo ")" >> "${result_file}"
  echo "Done, see result in sdk_sources"
}

# arg*: [version..]
cmd_list_sdk_sources() {
  local versions=($(cd sdk_sources/; ls -1 | sed 's/.sh$//'))
  if [ $# -ge 1 ]; then
    versions=("$@")
  fi
  for version in "${versions[@]}"; do
    local sdk_sources=()
    source "./sdk_sources/${version}.sh"
    for s in "${sdk_sources[@]}"; do
      local version="$(echo ${s} | awk -F:: '{print $1}')"
      local arch="$(echo ${s} | awk -F:: '{print $2}')"
      local sdkurl="$(echo ${s} | awk -F:: '{print $3}')"
      echo "${version} ${arch} ${sdkurl}"
    done
  done
}

# arg1: version arg2: template
cmd_gen_dockerfiles() {
  mkdir -p dockerfiles
  if [ $# -lt 2 ]; then
    abort "Need at least two arguments"
  fi
  local version="${1}"
  local template="${2}"
  local sdk_sources=()
  source "./sdk_sources/${version}.sh"
  for s in "${sdk_sources[@]}"; do
    local version="$(echo ${s} | awk -F:: '{print $1}')"
    local arch="$(echo ${s} | awk -F:: '{print $2}')"
    local sdkurl="$(echo ${s} | awk -F:: '{print $3}')"
    local outfile=dockerfiles/Dockerfile-"${version}-${arch}"
    cp -vf templates/"${template}" "${outfile}"
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

# arg1: [filter]
cmd_gen_git_tags() {
  for f in dockerfiles/Dockerfile-"${1}"*; do
    local tag="${f##dockerfiles/Dockerfile-}"
    if is_tag_exists "${tag}"; then
      echo "Ignore tag ${tag}, already exists"
    else
      cp -vf "${f}" Dockerfile
      git add -f Dockerfile
      git commit -m "Update Dockerfile for ${tag}"
      git tag "${tag}"
    fi
  done
}

cmd_push_git_branches() {
  for r in $(git remote); do
    for b in $(git show-ref --heads | awk '{print $2}' | sed 's|refs/heads/||'); do
      echo "=> git push ${r} ${b}:${b}"
      git push "${r}" "${b}:${b}"
    done
  done
}

# arg1: [filter]
cmd_push_git_tags() {
  # use this instead of "git push --tags" to trigger docker hub
  # autobuild
  local tags
  if [ -n "${1}" ]; then
    tags=$(git tag | grep "${1}")
  else
    tags=$(git tag)
  fi
  local r=github
  for t in ${tags}; do
    echo "=> git push ${r} ${t}:${t}"
    git push "${r}" "${t}:${t}" --force
    sleep 5
  done
}

cmd="${1}"; shift
cmd_"${cmd}" "$@"
