FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y build-essential gawk gcc-multilib flex git gettext libncurses5-dev libssl-dev python3-distutils zlib1g-dev \
                       sudo wget unzip file rsync
RUN useradd -m -u 1000 -U openwrt &&\
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt

ENV OPENWRT_SDK_VERSION xxx
ENV OPENWRT_SDK_ARCH xxx
ENV OPENWRT_SDK_URL xxx
RUN sudo -iu openwrt wget --tries=3 "${OPENWRT_SDK_URL}" &&\
    sudo -iu openwrt tar xf "$(basename ${OPENWRT_SDK_URL})" &&\
    sudo -iu openwrt rm -f "$(basename ${OPENWRT_SDK_URL})" &&\
    sudo -iu openwrt mv "$(basename ${OPENWRT_SDK_URL%%.tar.*})" openwrtsdk
RUN sudo -iu openwrt mkdir -p openwrtsdk/dl openwrtsdk/bin openwrtsdk/feeds

CMD sudo -iu openwrt bash
