#!/usr/bin/env bash

# gen all sdk sources
./updater.sh gen_sdk_sources 21.02.3
./updater.sh gen_sdk_sources 21.02.2
./updater.sh gen_sdk_sources 21.02.1
./updater.sh gen_sdk_sources 21.02.0
./updater.sh gen_sdk_sources 19.07.10
./updater.sh gen_sdk_sources 19.07.9
./updater.sh gen_sdk_sources 19.07.8
./updater.sh gen_sdk_sources 19.07.7
./updater.sh gen_sdk_sources 19.07.6
./updater.sh gen_sdk_sources 19.07.5
./updater.sh gen_sdk_sources 19.07.4
./updater.sh gen_sdk_sources 19.07.3
./updater.sh gen_sdk_sources 19.07.2
./updater.sh gen_sdk_sources 19.07.1
./updater.sh gen_sdk_sources 19.07.0
./updater.sh gen_sdk_sources 18.06.9
./updater.sh gen_sdk_sources 18.06.8
./updater.sh gen_sdk_sources 18.06.7
./updater.sh gen_sdk_sources 18.06.6
./updater.sh gen_sdk_sources 18.06.5
./updater.sh gen_sdk_sources 18.06.4
./updater.sh gen_sdk_sources 18.06.3
./updater.sh gen_sdk_sources 18.06.2
./updater.sh gen_sdk_sources 18.06.1
./updater.sh gen_sdk_sources 18.06.0
./updater.sh gen_sdk_sources 17.01.7
./updater.sh gen_sdk_sources 17.01.6
./updater.sh gen_sdk_sources 17.01.5
./updater.sh gen_sdk_sources 17.01.4
./updater.sh gen_sdk_sources 17.01.3
./updater.sh gen_sdk_sources 17.01.2
./updater.sh gen_sdk_sources 17.01.1
./updater.sh gen_sdk_sources 17.01.0
./updater.sh gen_sdk_sources 15.05.1 chaos_calmer
./updater.sh gen_sdk_sources 15.05   chaos_calmer
./updater.sh gen_sdk_sources 14.07   barrier_breaker

# gen all dockerfiles
./updater.sh gen_dockerfiles 21.02.3 Dockerfile-21.02.0.alpine.tpl
./updater.sh gen_dockerfiles 21.02.2 Dockerfile-21.02.0.alpine.tpl
./updater.sh gen_dockerfiles 21.02.1 Dockerfile-21.02.0.alpine.tpl
./updater.sh gen_dockerfiles 21.02.0 Dockerfile-21.02.0.alpine.tpl
./updater.sh gen_dockerfiles 19.07.10 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.9 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.8 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.7 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.6 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.5 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.4 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.3 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.2 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.1 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 19.07.0 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.9 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.8 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.7 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.6 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.5 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.4 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.3 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.2 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.1 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 18.06.0 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.7 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.6 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.5 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.4 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.3 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.2 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.1 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 17.01.0 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 15.05.1 Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 15.05   Dockerfile-17.01.0.ubuntu.tpl
./updater.sh gen_dockerfiles 14.07   Dockerfile-17.01.0.ubuntu.tpl

# gen all tags for popular models
models=(
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
  echo "For model: ${m}"
  ./updater.sh gen_git_tag 21.02.3-${m}
  ./updater.sh gen_git_tag 21.02.2-${m}
  ./updater.sh gen_git_tag 21.02.1-${m}
  ./updater.sh gen_git_tag 21.02.0-${m}
  ./updater.sh gen_git_tag 19.07.10-${m}
  ./updater.sh gen_git_tag 19.07.9-${m}
  ./updater.sh gen_git_tag 19.07.8-${m}
  ./updater.sh gen_git_tag 19.07.7-${m}
  ./updater.sh gen_git_tag 19.07.6-${m}
  ./updater.sh gen_git_tag 19.07.5-${m}
  ./updater.sh gen_git_tag 19.07.4-${m}
  ./updater.sh gen_git_tag 19.07.3-${m}
  ./updater.sh gen_git_tag 19.07.2-${m}
  ./updater.sh gen_git_tag 19.07.1-${m}
  ./updater.sh gen_git_tag 19.07.0-${m}
  ./updater.sh gen_git_tag 18.06.9-${m}
  ./updater.sh gen_git_tag 18.06.8-${m}
  ./updater.sh gen_git_tag 18.06.7-${m}
  ./updater.sh gen_git_tag 18.06.6-${m}
  ./updater.sh gen_git_tag 18.06.5-${m}
  ./updater.sh gen_git_tag 18.06.4-${m}
  ./updater.sh gen_git_tag 18.06.3-${m}
  ./updater.sh gen_git_tag 18.06.2-${m}
  ./updater.sh gen_git_tag 18.06.1-${m}
  ./updater.sh gen_git_tag 18.06.0-${m}
  ./updater.sh gen_git_tag 17.01.7-${m}
  ./updater.sh gen_git_tag 17.01.6-${m}
  ./updater.sh gen_git_tag 17.01.5-${m}
  ./updater.sh gen_git_tag 17.01.4-${m}
  ./updater.sh gen_git_tag 17.01.3-${m}
  ./updater.sh gen_git_tag 17.01.2-${m}
  ./updater.sh gen_git_tag 17.01.1-${m}
  ./updater.sh gen_git_tag 17.01.0-${m}
  ./updater.sh gen_git_tag 15.05.1-${m}
  ./updater.sh gen_git_tag 15.05-${m}
  ./updater.sh gen_git_tag 14.07-${m}
done
