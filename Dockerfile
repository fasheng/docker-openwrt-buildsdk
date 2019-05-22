FROM ubuntu:18.04

ENV OPENWRT_SDK_VERSION 18.06.2
ENV OPENWRT_SDK_ARCH brcm2708-bcm2709
ENV OPENWRT_SDK_URL https://downloads.openwrt.org/releases/18.06.2/targets/brcm2708/bcm2709/openwrt-sdk-18.06.2-brcm2708-bcm2709_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz
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
