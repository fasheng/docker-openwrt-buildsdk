Full version and architecture OpenWrt build SDK Docker images

**gen_dockerfile.sh 生成脚本简介**

由于 OpenWrt 不同的版本和架构分别对应指定的 SDK, 为了方便部署, 目录下
 `gen_dockerfile.sh` 用来生成对应的 Dockerfile.

- 获取当前支持的 OpenWrt 主版本号
  ```
  $ gen_dockerfile.sh list_support_versions
  ```

- 通过网页抓取各版本架构的 SDK 链接
  ```
  $ gen_dockerfile.sh gen_sdk_sources
  ```

- 列出抓取成功的 OpenWrt 版本架构信息
  ```
  $ gen_dockerfile.sh list_sdk_sources
  ```

- 生成各版本架构对应的 Dockerfile
  ```
  $ gen_dockerfile.sh gen_dockerfiles
  ```

- 更新对应的 git tags, 用于触发 Docker Hub 自动化构建
  ```
  $ gen_dockerfile.sh gen_git_tag
  ```

**部署**

```
$ git checkout 15.05.1-ar71xx
$ docker build --tag openwrt-buildsdk:15.05.1-ar71xx .
```

**运行**

注意外部传入的 volume 目录 Owner 权限要设置为 `1000:1000` 或者将访问权限
设置为 `a+rwx`, 否则 Docker 内的 openwrt 用户没有访问权限.

以编译 ngrokc 为例, 完整示例如下:
```
$ mkdir out-dl-dir out-bin-dir
$ echo 'src-git extra https://github.com/shangjiyu/openwrt-extra.git' > in-feed-conf
$ chmod a+rwx -R in-feed-conf out-dl-dir out-bin-dir
# docker run --detach -ti \
    -v in-feed-conf:/home/openwrt/openwrt/feeds.conf.default \
    -v out-dl-dir:/home/openwrt/openwrt/dl \
    -v out-bin-dir:/home/openwrt/openwrt/bin \
    --name running-openwrt-buildsdk-15.05.1-ar71xx openwrt-buildsdk:15.05.1-ar71xx
docker> ./scripts/feeds update extra
docker> ./scripts/feeds install ngrokc
docker> make
```

**参考**
- https://wiki.openwrt.org/doc/howto/obtain.firmware.sdk
- https://wiki.openwrt.org/doc/howto/build
