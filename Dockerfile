FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y sudo git-core subversion ccache build-essential gcc-multilib libssl-dev \
                       libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python
RUN useradd -m -u 1000 -U openwrt &&\
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt

ENV OPENWRT_SDK_VERSION 15.05
ENV OPENWRT_SDK_ARCH ramips-mt7620
ENV OPENWRT_SDK_URL https://downloads.openwrt.org/chaos_calmer/15.05/ramips/mt7620/OpenWrt-SDK-15.05-ramips-mt7620_gcc-4.8-linaro_uClibc-0.9.33.2.Linux-x86_64.tar.bz2
RUN sudo -iu openwrt wget --tries=3 "${OPENWRT_SDK_URL}" &&\
    sudo -iu openwrt tar xf "$(basename ${OPENWRT_SDK_URL})" &&\
    sudo -iu openwrt rm -f "$(basename ${OPENWRT_SDK_URL})" &&\
    sudo -iu openwrt mv "$(basename ${OPENWRT_SDK_URL%%.tar.*})" openwrtsdk
RUN sudo -iu openwrt mkdir -p openwrtsdk/dl openwrtsdk/bin openwrtsdk/feeds

CMD sudo -iu openwrt bash
