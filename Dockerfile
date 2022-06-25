FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y sudo git-core subversion ccache build-essential gcc-multilib libssl-dev \
                       libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python
RUN useradd -m -u 1000 -U openwrt &&\
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt

ENV OPENWRT_SDK_VERSION 19.07.7
ENV OPENWRT_SDK_ARCH ramips-mt76x8
ENV OPENWRT_SDK_URL https://downloads.openwrt.org/releases/19.07.7/targets/ramips/mt76x8/openwrt-sdk-19.07.7-ramips-mt76x8_gcc-7.5.0_musl.Linux-x86_64.tar.xz
RUN sudo -iu openwrt wget --tries=3 "${OPENWRT_SDK_URL}" &&\
    sudo -iu openwrt tar xf "$(basename ${OPENWRT_SDK_URL})" &&\
    sudo -iu openwrt rm -f "$(basename ${OPENWRT_SDK_URL})" &&\
    sudo -iu openwrt mv "$(basename ${OPENWRT_SDK_URL%%.tar.*})" openwrtsdk
RUN sudo -iu openwrt mkdir -p openwrtsdk/dl openwrtsdk/bin openwrtsdk/feeds

CMD sudo -iu openwrt bash
