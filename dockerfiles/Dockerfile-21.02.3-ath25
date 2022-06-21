FROM ubuntu:18.04

ENV OPENWRT_SDK_VERSION 21.02.3
ENV OPENWRT_SDK_ARCH ath25
ENV OPENWRT_SDK_URL https://downloads.openwrt.org/releases/21.02.3/targets/ath25/generic/openwrt-sdk-21.02.3-ath25_gcc-8.4.0_musl.Linux-x86_64.tar.xz
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update;\
    apt-get install -y sudo git-core subversion ccache build-essential gcc-multilib libssl-dev \
                       libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python &&\
    useradd -m openwrt &&\
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt &&\
    sudo -iu openwrt wget --tries=3 "${OPENWRT_SDK_URL}" &&\
    sudo -iu openwrt tar xf "$(basename ${OPENWRT_SDK_URL})" &&\
    sudo -iu openwrt rm -f "$(basename ${OPENWRT_SDK_URL})" &&\
    sudo -iu openwrt mv "$(basename ${OPENWRT_SDK_URL%%.tar.*})" openwrtsdk &&\
    sudo -iu openwrt openwrtsdk/scripts/feeds update

CMD sudo -iu openwrt bash
