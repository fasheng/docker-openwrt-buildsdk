Full version and architecture OpenWrt build SDK Docker images

**updater.sh脚本简介**

由于OpenWrt不同的版本和架构分别对应指定的SDK, 为了方便部署, 目录下
 `updater.sh` 用来批量生成对应的Dockerfile文件.

- 通过网页抓取各版本架构的SDK链接
  ```
  $ ./updater.sh gen_sdk_sources 21.02.3
  $ ./updater.sh gen_sdk_sources 19.07.2
  $ ./updater.sh gen_sdk_sources 18.06.2
  $ ./updater.sh gen_sdk_sources 17.01.4
  $ ./updater.sh gen_sdk_sources 15.05.1 chaos_calmer
  $ ./updater.sh gen_sdk_sources 15.05   chaos_calmer
  $ ./updater.sh gen_sdk_sources 14.07   barrier_breaker
  ```

- 列出抓取成功的OpenWrt版本架构信息
  ```
  $ ./updater.sh list_sdk_sources 21.02.3 19.07.2
  $ ./updater.sh list_sdk_sources
  ```

- 生成各版本架构对应的Dockerfile
  ```
  $ ./updater.sh gen_dockerfiles 21.02.3 Dockerfile-21.02.0.ubuntu.tpl
  $ ./updater.sh gen_dockerfiles 19.07.2 Dockerfile-17.01.0.ubuntu.tpl
  $ ./updater.sh gen_dockerfiles 18.06.2 Dockerfile-17.01.0.ubuntu.tpl
  $ ./updater.sh gen_dockerfiles 17.01.4 Dockerfile-17.01.0.ubuntu.tpl
  $ ./updater.sh gen_dockerfiles 15.05.1 Dockerfile-17.01.0.ubuntu.tpl
  $ ./updater.sh gen_dockerfiles 15.05   Dockerfile-17.01.0.ubuntu.tpl
  $ ./updater.sh gen_dockerfiles 14.07   Dockerfile-17.01.0.ubuntu.tpl
  ```

- 更新对应的git tags
  ```
  $ ./updater.sh gen_git_tags
  ```

- 上传git tags, 用于触发Docker Hub自动化构建, 注意避免直接使用 `git push
  --tags` 命令
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

**部署**

```
# docker build --tag fasheng/openwrt-buildsdk:15.05.1-ar71xx --file dockerfiles/Dockerfile-15.05.1-ar71xx .
```
或者
```
$ git checkout 15.05.1-ar71xx
# docker build --tag fasheng/openwrt-buildsdk:15.05.1-ar71xx .
```
或者从docker hub拉取镜像(21.02.0之后不可用)
```
# docker pull fasheng/openwrt-buildsdk:15.05.1-ar71xx
```

**运行**

注意外部传入的volume目录Owner权限要设置为`1000:1000`或者将访问权限
设置为`a+rwx`, 否则Docker内的openwrt用户没有访问权限.

以编译ngrokc为例, 完整示例如下:
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
docker> make -j1 V=s         # 记得在menuconfig界面禁用 global building settings/Cryptographically sign package lists 这一选项
```

**参考**
- https://wiki.openwrt.org/doc/howto/obtain.firmware.sdk
- https://wiki.openwrt.org/doc/howto/build
