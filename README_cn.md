Full version and architecture OpenWrt build SDK Docker images

**updater.sh脚本简介**

由于OpenWrt不同的版本和架构分别对应指定的SDK, 为了方便部署, 目录下
 `updater.sh` 用来批量生成对应的Dockerfile文件.

- 获取当前支持的OpenWrt主版本号
  ```
  $ ./updater.sh list_support_versions
  ```

- 通过网页抓取各版本架构的SDK链接
  ```
  $ ./updater.sh gen_sdk_sources
  ```

- 列出抓取成功的OpenWrt版本架构信息
  ```
  $ ./updater.sh list_sdk_sources
  ```

- 生成各版本架构对应的Dockerfile
  ```
  $ ./updater.sh gen_dockerfiles
  ```

- 更新对应的git tags
  ```
  $ ./updater.sh gen_git_tags
  ```

- 上传git tags, 用于触发Docker Hub自动化构建, 注意避免直接使用 `git push
  --tags` 命令
  ```
  $ ./updater.sh push_git_tags
  ```

**部署**

```
$ git checkout 15.05.1-ar71xx
# docker build --tag fasheng/openwrt-buildsdk:15.05.1-ar71xx .
```
或者
```
# docker pull fasheng/openwrt-buildsdk:15.05.1-ar71xx
```

**运行**

注意外部传入的volume目录Owner权限要设置为`1000:1000`或者将访问权限
设置为`a+rwx`, 否则Docker内的openwrt用户没有访问权限.

以编译ngrokc为例, 完整示例如下:
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

**参考**
- https://wiki.openwrt.org/doc/howto/obtain.firmware.sdk
- https://wiki.openwrt.org/doc/howto/build
