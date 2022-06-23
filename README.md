Full version and architecture OpenWrt build SDK Docker images

**updater.sh usage**

`updater.sh` used to generate Dockerfile files for different OpenWrt versions and architectures.

- Fetch all SDK urls through parsing the web page
  ```
  $ ./updater.sh gen_sdk_sources 21.02.3
  $ ./updater.sh gen_sdk_sources 19.07.2
  $ ./updater.sh gen_sdk_sources 18.06.2
  $ ./updater.sh gen_sdk_sources 17.01.4
  $ ./updater.sh gen_sdk_sources 15.05.1 chaos_calmer
  $ ./updater.sh gen_sdk_sources 15.05   chaos_calmer
  $ ./updater.sh gen_sdk_sources 14.07   barrier_breaker
  ```

- List all the SDK urls
  ```
  $ ./updater.sh list_sdk_sources 21.02.3 19.07.2
  $ ./updater.sh list_sdk_sources
  ```

- Generate Dockerfile files
  ```
  $ ./updater.sh gen_dockerfiles 21.02.3 Dockerfile-21.02.0.ubuntu.tpl
  $ ./updater.sh gen_dockerfiles 19.07.2 Dockerfile-17.01.0.ubuntu.tpl
  $ ./updater.sh gen_dockerfiles 18.06.2 Dockerfile-17.01.0.ubuntu.tpl
  $ ./updater.sh gen_dockerfiles 17.01.4 Dockerfile-17.01.0.ubuntu.tpl
  $ ./updater.sh gen_dockerfiles 15.05.1 Dockerfile-17.01.0.ubuntu.tpl
  $ ./updater.sh gen_dockerfiles 15.05   Dockerfile-17.01.0.ubuntu.tpl
  $ ./updater.sh gen_dockerfiles 14.07   Dockerfile-17.01.0.ubuntu.tpl
  ```

- Generate current repo git tags
  ```
  $ ./updater.sh gen_git_tags
  ```

- Upload git tags to trigger the build job in Docker Hub, note do not
  use `git push --tags` manually
  ```
  $ ./updater.sh push_git_tags 21.02.3-ramips-mt7621
  $ ./updater.sh push_git_tags 21.02.3-ath79
  $ ./updater.sh push_git_tags 21.02.3-ramips-mt76x8
  $ ./updater.sh push_git_tags 21.02.3-mediatek-mt7622
  $ ./updater.sh push_git_tags 21.02.3-mvebu-cortexa9
  $ ./updater.sh push_git_tags 21.02.3-ramips-mt7620
  $ ./updater.sh push_git_tags 21.02.3-ipq40xx
  $ ./updater.sh push_git_tags 21.02.3-bcm63xx
  $ ./updater.sh push_git_tags 21.02.3-ipq806x
  $ ./updater.sh push_git_tags 21.02.3-x86-64
  ```

**Deploy**

```
# docker build --tag fasheng/openwrt-buildsdk:15.05.1-ar71xx --file dockerfiles/Dockerfile-15.05.1-ar71xx .
```
or
```
$ git checkout 15.05.1-ar71xx
# docker build --tag fasheng/openwrt-buildsdk:15.05.1-ar71xx .
```
or pull from docker hub(not works since 21.02.0)
```
# docker pull fasheng/openwrt-buildsdk:15.05.1-ar71xx
```

**Usage**

The outside volume directory's ownership should be to `1000:1000` or
set the permission to `a+rwx`, or the openwrt user in Docker could not
access them.

For example to compile `ngrokc`:
```
$ mkdir out-dl-dir out-bin-dir
# docker run -ti \
    -v $(pwd)/out-dl-dir:/home/openwrt/openwrtsdk/dl \
    -v $(pwd)/out-bin-dir:/home/openwrt/openwrtsdk/bin \
    fasheng/openwrt-buildsdk:21.02.3-ath79
docker> cd openwrtsdk
docker> sudo chmod a+rwx dl bin
docker> echo 'src-git custom https://github.com/kiddin9/openwrt-packages' >> feeds.conf.default
docker> ./scripts/feeds update custom
docker> ./scripts/feeds install ngrokc zlib kmod-cryptodev
docker> make -j1 V=s         # remember disable global building settings/Cryptographically sign package lists in menuconfig
```

**References**
- https://wiki.openwrt.org/doc/howto/obtain.firmware.sdk
- https://wiki.openwrt.org/doc/howto/build
