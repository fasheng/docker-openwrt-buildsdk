#!/usr/bin/env bash

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
