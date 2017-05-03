FROM ubuntu:14.04

ENV OPENWRT_SDK_VERSION 15.05
ENV OPENWRT_SDK_ARCH octeon
ENV OPENWRT_SDK_URL https://downloads.openwrt.org/chaos_calmer/15.05/octeon/generic/OpenWrt-SDK-15.05-octeon_gcc-4.6-linaro_uClibc-0.9.33.2.Linux-x86_64.tar.bz2
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update;\
    apt-get install -y git-core subversion ccache build-essential gcc-multilib libssl-dev \
                       libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python &&\
    useradd -m openwrt &&\
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt &&\
    sudo -iu openwrt wget "${OPENWRT_SDK_URL}" &&\
    sudo -iu openwrt tar xf "$(basename ${OPENWRT_SDK_URL})" &&\
    sudo -iu openwrt rm -f "$(basename ${OPENWRT_SDK_URL})" &&\
    sudo -iu openwrt mv "$(basename ${OPENWRT_SDK_URL%%.tar.bz2})" openwrt &&\
    sudo -iu openwrt openwrt/scripts/feeds update

CMD sudo -iu openwrt bash
