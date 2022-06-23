sdk_sources=(
  "17.01.3::apm821xx-nand::https://downloads.openwrt.org/releases/17.01.3/targets/apm821xx/nand/lede-sdk-17.01.3-apm821xx-nand_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::apm821xx-sata::https://downloads.openwrt.org/releases/17.01.3/targets/apm821xx/sata/lede-sdk-17.01.3-apm821xx-sata_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::ar71xx::https://downloads.openwrt.org/releases/17.01.3/targets/ar71xx/generic/lede-sdk-17.01.3-ar71xx-generic_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::ar71xx-mikrotik::https://downloads.openwrt.org/releases/17.01.3/targets/ar71xx/mikrotik/lede-sdk-17.01.3-ar71xx-mikrotik_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::ar71xx-nand::https://downloads.openwrt.org/releases/17.01.3/targets/ar71xx/nand/lede-sdk-17.01.3-ar71xx-nand_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::arc770::https://downloads.openwrt.org/releases/17.01.3/targets/arc770/generic/lede-sdk-17.01.3-arc770-generic_gcc-arc-2016.03_uClibc-1.0.14.Linux-x86_64.tar.xz"
  "17.01.3::archs38::https://downloads.openwrt.org/releases/17.01.3/targets/archs38/generic/lede-sdk-17.01.3-archs38-generic_gcc-arc-2016.03_uClibc-1.0.14.Linux-x86_64.tar.xz"
  "17.01.3::arm64::https://downloads.openwrt.org/releases/17.01.3/targets/arm64/generic/lede-sdk-17.01.3-arm64_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::armvirt::https://downloads.openwrt.org/releases/17.01.3/targets/armvirt/generic/lede-sdk-17.01.3-armvirt_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::at91-legacy::https://downloads.openwrt.org/releases/17.01.3/targets/at91/legacy/lede-sdk-17.01.3-at91-legacy_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::at91-sama5d3::https://downloads.openwrt.org/releases/17.01.3/targets/at91/sama5d3/lede-sdk-17.01.3-at91-sama5d3_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::ath25::https://downloads.openwrt.org/releases/17.01.3/targets/ath25/generic/lede-sdk-17.01.3-ath25_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::bcm53xx::https://downloads.openwrt.org/releases/17.01.3/targets/bcm53xx/generic/lede-sdk-17.01.3-bcm53xx_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::brcm2708-bcm2708::https://downloads.openwrt.org/releases/17.01.3/targets/brcm2708/bcm2708/lede-sdk-17.01.3-brcm2708-bcm2708_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::brcm2708-bcm2709::https://downloads.openwrt.org/releases/17.01.3/targets/brcm2708/bcm2709/lede-sdk-17.01.3-brcm2708-bcm2709_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::brcm2708-bcm2710::https://downloads.openwrt.org/releases/17.01.3/targets/brcm2708/bcm2710/lede-sdk-17.01.3-brcm2708-bcm2710_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::brcm47xx::https://downloads.openwrt.org/releases/17.01.3/targets/brcm47xx/generic/lede-sdk-17.01.3-brcm47xx-generic_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::brcm47xx-legacy::https://downloads.openwrt.org/releases/17.01.3/targets/brcm47xx/legacy/lede-sdk-17.01.3-brcm47xx-legacy_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::brcm47xx-mips74k::https://downloads.openwrt.org/releases/17.01.3/targets/brcm47xx/mips74k/lede-sdk-17.01.3-brcm47xx-mips74k_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::brcm63xx::https://downloads.openwrt.org/releases/17.01.3/targets/brcm63xx/generic/lede-sdk-17.01.3-brcm63xx-generic_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::brcm63xx-smp::https://downloads.openwrt.org/releases/17.01.3/targets/brcm63xx/smp/lede-sdk-17.01.3-brcm63xx-smp_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::cns3xxx::https://downloads.openwrt.org/releases/17.01.3/targets/cns3xxx/generic/lede-sdk-17.01.3-cns3xxx_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::gemini-wiligear::https://downloads.openwrt.org/releases/17.01.3/targets/gemini/wiligear/lede-sdk-17.01.3-gemini-wiligear_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::imx6::https://downloads.openwrt.org/releases/17.01.3/targets/imx6/generic/lede-sdk-17.01.3-imx6_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::ipq806x::https://downloads.openwrt.org/releases/17.01.3/targets/ipq806x/generic/lede-sdk-17.01.3-ipq806x_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::ixp4xx::https://downloads.openwrt.org/releases/17.01.3/targets/ixp4xx/generic/lede-sdk-17.01.3-ixp4xx-generic_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::ixp4xx-harddisk::https://downloads.openwrt.org/releases/17.01.3/targets/ixp4xx/harddisk/lede-sdk-17.01.3-ixp4xx-harddisk_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::kirkwood::https://downloads.openwrt.org/releases/17.01.3/targets/kirkwood/generic/lede-sdk-17.01.3-kirkwood_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::lantiq-falcon::https://downloads.openwrt.org/releases/17.01.3/targets/lantiq/falcon/lede-sdk-17.01.3-lantiq-falcon_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::lantiq-xrx200::https://downloads.openwrt.org/releases/17.01.3/targets/lantiq/xrx200/lede-sdk-17.01.3-lantiq-xrx200_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::lantiq-xway::https://downloads.openwrt.org/releases/17.01.3/targets/lantiq/xway/lede-sdk-17.01.3-lantiq-xway_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::lantiq-xway_legacy::https://downloads.openwrt.org/releases/17.01.3/targets/lantiq/xway_legacy/lede-sdk-17.01.3-lantiq-xway_legacy_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::layerscape-32b::https://downloads.openwrt.org/releases/17.01.3/targets/layerscape/32b/lede-sdk-17.01.3-layerscape-32b_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::layerscape-64b::https://downloads.openwrt.org/releases/17.01.3/targets/layerscape/64b/lede-sdk-17.01.3-layerscape-64b_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::mediatek::https://downloads.openwrt.org/releases/17.01.3/targets/mediatek/generic/lede-sdk-17.01.3-mediatek_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::mpc85xx::https://downloads.openwrt.org/releases/17.01.3/targets/mpc85xx/generic/lede-sdk-17.01.3-mpc85xx-generic_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::mpc85xx-p1020::https://downloads.openwrt.org/releases/17.01.3/targets/mpc85xx/p1020/lede-sdk-17.01.3-mpc85xx-p1020_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::mvebu::https://downloads.openwrt.org/releases/17.01.3/targets/mvebu/generic/lede-sdk-17.01.3-mvebu_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::mxs::https://downloads.openwrt.org/releases/17.01.3/targets/mxs/generic/lede-sdk-17.01.3-mxs_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::octeon::https://downloads.openwrt.org/releases/17.01.3/targets/octeon/generic/lede-sdk-17.01.3-octeon_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::omap::https://downloads.openwrt.org/releases/17.01.3/targets/omap/generic/lede-sdk-17.01.3-omap_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::oxnas::https://downloads.openwrt.org/releases/17.01.3/targets/oxnas/generic/lede-sdk-17.01.3-oxnas_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::ramips-mt7620::https://downloads.openwrt.org/releases/17.01.3/targets/ramips/mt7620/lede-sdk-17.01.3-ramips-mt7620_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::ramips-mt7621::https://downloads.openwrt.org/releases/17.01.3/targets/ramips/mt7621/lede-sdk-17.01.3-ramips-mt7621_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::ramips-mt7628::https://downloads.openwrt.org/releases/17.01.3/targets/ramips/mt7628/lede-sdk-17.01.3-ramips-mt7628_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::ramips-mt7688::https://downloads.openwrt.org/releases/17.01.3/targets/ramips/mt7688/lede-sdk-17.01.3-ramips-mt7688_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::ramips-rt288x::https://downloads.openwrt.org/releases/17.01.3/targets/ramips/rt288x/lede-sdk-17.01.3-ramips-rt288x_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::ramips-rt305x::https://downloads.openwrt.org/releases/17.01.3/targets/ramips/rt305x/lede-sdk-17.01.3-ramips-rt305x_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::ramips-rt3883::https://downloads.openwrt.org/releases/17.01.3/targets/ramips/rt3883/lede-sdk-17.01.3-ramips-rt3883_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::rb532::https://downloads.openwrt.org/releases/17.01.3/targets/rb532/generic/lede-sdk-17.01.3-rb532_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::sunxi::https://downloads.openwrt.org/releases/17.01.3/targets/sunxi/generic/lede-sdk-17.01.3-sunxi_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
  "17.01.3::x86-64::https://downloads.openwrt.org/releases/17.01.3/targets/x86/64/lede-sdk-17.01.3-x86-64_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::x86::https://downloads.openwrt.org/releases/17.01.3/targets/x86/generic/lede-sdk-17.01.3-x86-generic_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::x86-geode::https://downloads.openwrt.org/releases/17.01.3/targets/x86/geode/lede-sdk-17.01.3-x86-geode_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::x86-legacy::https://downloads.openwrt.org/releases/17.01.3/targets/x86/legacy/lede-sdk-17.01.3-x86-legacy_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"
  "17.01.3::zynq::https://downloads.openwrt.org/releases/17.01.3/targets/zynq/generic/lede-sdk-17.01.3-zynq_gcc-5.4.0_musl-1.1.16_eabi.Linux-x86_64.tar.xz"
)
