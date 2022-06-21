Full version and architecture OpenWrt build SDK Docker images

**updater.sh usage**

`updater.sh` used to generate Dockerfile files for different OpenWrt versions and architectures.

- Get all supported OpenWrt main versions
  ```
  $ ./updater.sh list_support_versions
  ```

- Get all SDK urls through parsing the web page
  ```
  $ ./updater.sh gen_sdk_sources
  ```

- List all the SDK urls
  ```
  $ ./updater.sh list_sdk_sources
  ```

- Generate Dockerfile files
  ```
  $ ./updater.sh gen_dockerfiles
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
$ git checkout 15.05.1-ar71xx
# docker build --tag fasheng/openwrt-buildsdk:15.05.1-ar71xx .
```
or
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
$ echo 'src-git extra https://github.com/shangjiyu/openwrt-extra.git' > in-feed-conf
$ chmod a+rwx -R in-feed-conf out-dl-dir out-bin-dir
# docker run -ti \
    -v in-feed-conf:/home/openwrt/openwrtsdk/feeds.conf.default \
    -v out-dl-dir:/home/openwrt/openwrtsdk/dl \
    -v out-bin-dir:/home/openwrt/openwrtsdk/bin \
    fasheng/openwrt-buildsdk:15.05.1-ar71xx
docker> cd openwrtsdk
docker> ./scripts/feeds update extra
docker> ./scripts/feeds install ngrokc
docker> make
```

**References**
- https://wiki.openwrt.org/doc/howto/obtain.firmware.sdk
- https://wiki.openwrt.org/doc/howto/build
