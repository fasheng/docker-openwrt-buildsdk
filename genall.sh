#!/usr/bin/env bash

# gen all sdk sources
./updater.sh gen_sdk_sources 14.07   barrier_breaker
./updater.sh gen_sdk_sources 15.05   chaos_calmer
./updater.sh gen_sdk_sources 15.05.1 chaos_calmer
./updater.sh gen_sdk_sources 17.01.0
./updater.sh gen_sdk_sources 17.01.1
./updater.sh gen_sdk_sources 17.01.2
./updater.sh gen_sdk_sources 17.01.3
./updater.sh gen_sdk_sources 17.01.4
./updater.sh gen_sdk_sources 17.01.5
./updater.sh gen_sdk_sources 17.01.6
./updater.sh gen_sdk_sources 17.01.7
./updater.sh gen_sdk_sources 18.06.0
./updater.sh gen_sdk_sources 18.06.1
./updater.sh gen_sdk_sources 18.06.2
./updater.sh gen_sdk_sources 18.06.3
./updater.sh gen_sdk_sources 18.06.4
./updater.sh gen_sdk_sources 18.06.5
./updater.sh gen_sdk_sources 18.06.6
./updater.sh gen_sdk_sources 18.06.7
./updater.sh gen_sdk_sources 18.06.8
./updater.sh gen_sdk_sources 18.06.9
./updater.sh gen_sdk_sources 19.07.0
./updater.sh gen_sdk_sources 19.07.1
./updater.sh gen_sdk_sources 19.07.2
./updater.sh gen_sdk_sources 19.07.3
./updater.sh gen_sdk_sources 19.07.4
./updater.sh gen_sdk_sources 19.07.5
./updater.sh gen_sdk_sources 19.07.6
./updater.sh gen_sdk_sources 19.07.7
./updater.sh gen_sdk_sources 19.07.8
./updater.sh gen_sdk_sources 19.07.9
./updater.sh gen_sdk_sources 19.07.10
./updater.sh gen_sdk_sources 21.02.0
./updater.sh gen_sdk_sources 21.02.1
./updater.sh gen_sdk_sources 21.02.2
./updater.sh gen_sdk_sources 21.02.3

# gen all dockerfiles
./updater.sh gen_dockerfiles 14.07   Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 15.05   Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 15.05.1 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.0 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.1 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.2 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.3 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.4 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.5 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.6 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.7 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.0 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.1 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.2 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.3 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.4 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.5 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.6 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.7 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.8 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.9 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.0 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.1 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.2 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.3 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.4 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.5 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.6 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.7 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.8 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.9 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.10 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 21.02.0 Dockerfile-21.02.0.alpine.tpl
./updater.sh gen_dockerfiles 21.02.1 Dockerfile-21.02.0.alpine.tpl
./updater.sh gen_dockerfiles 21.02.2 Dockerfile-21.02.0.alpine.tpl
./updater.sh gen_dockerfiles 21.02.3 Dockerfile-21.02.0.alpine.tpl

# gen all tags for popular models

# arg1: <version>
gen_popular_tags() {
  local version=${1}
  local models=(
    ramips-mt7621
    ath79
    ramips-mt76x8
    mediatek-mt7622
    mvebu-cortexa9
    ramips-mt7620
    ipq40xx
    bcm63xx
    ipq806x
    x86-64
    x86
    ar71xx
  )
  for m in ${models[@]}; do
    ./updater.sh gen_git_tag ${version}-${m}
  done
}
gen_popular_tags 14.07
gen_popular_tags 15.05
gen_popular_tags 15.05.1
gen_popular_tags 17.01.0
gen_popular_tags 17.01.1
gen_popular_tags 17.01.2
gen_popular_tags 17.01.3
gen_popular_tags 17.01.4
gen_popular_tags 17.01.5
gen_popular_tags 17.01.6
gen_popular_tags 17.01.7
gen_popular_tags 18.06.0
gen_popular_tags 18.06.1
gen_popular_tags 18.06.2
gen_popular_tags 18.06.3
gen_popular_tags 18.06.4
gen_popular_tags 18.06.5
gen_popular_tags 18.06.6
gen_popular_tags 18.06.7
gen_popular_tags 18.06.8
gen_popular_tags 18.06.9
gen_popular_tags 19.07.0
gen_popular_tags 19.07.1
gen_popular_tags 19.07.2
gen_popular_tags 19.07.3
gen_popular_tags 19.07.4
gen_popular_tags 19.07.5
gen_popular_tags 19.07.6
gen_popular_tags 19.07.7
gen_popular_tags 19.07.8
gen_popular_tags 19.07.9
gen_popular_tags 19.07.10
gen_popular_tags 21.02.0
gen_popular_tags 21.02.1
gen_popular_tags 21.02.2
gen_popular_tags 21.02.3
