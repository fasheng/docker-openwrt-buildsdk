sdk_sources=(
  "18.06.0::apm821xx-nand::https://downloads.openwrt.org/releases/18.06.0/targets/apm821xx/nand/openwrt-sdk-18.06.0-apm821xx-nand_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::apm821xx-sata::https://downloads.openwrt.org/releases/18.06.0/targets/apm821xx/sata/openwrt-sdk-18.06.0-apm821xx-sata_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::ar7-ac49x::https://downloads.openwrt.org/releases/18.06.0/targets/ar7/ac49x/openwrt-sdk-18.06.0-ar7-ac49x_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::ar7::https://downloads.openwrt.org/releases/18.06.0/targets/ar7/generic/openwrt-sdk-18.06.0-ar7-generic_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::ar71xx::https://downloads.openwrt.org/releases/18.06.0/targets/ar71xx/generic/openwrt-sdk-18.06.0-ar71xx-generic_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::ar71xx-mikrotik::https://downloads.openwrt.org/releases/18.06.0/targets/ar71xx/mikrotik/openwrt-sdk-18.06.0-ar71xx-mikrotik_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::ar71xx-nand::https://downloads.openwrt.org/releases/18.06.0/targets/ar71xx/nand/openwrt-sdk-18.06.0-ar71xx-nand_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::ar71xx-tiny::https://downloads.openwrt.org/releases/18.06.0/targets/ar71xx/tiny/openwrt-sdk-18.06.0-ar71xx-tiny_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::arc770::https://downloads.openwrt.org/releases/18.06.0/targets/arc770/generic/openwrt-sdk-18.06.0-arc770-generic_gcc-arc-2017.09-release_uClibc.Linux-x86_64.tar.xz"
  "18.06.0::archs38::https://downloads.openwrt.org/releases/18.06.0/targets/archs38/generic/openwrt-sdk-18.06.0-archs38-generic_gcc-arc-2017.09-release_uClibc.Linux-x86_64.tar.xz"
  "18.06.0::armvirt-32::https://downloads.openwrt.org/releases/18.06.0/targets/armvirt/32/openwrt-sdk-18.06.0-armvirt-32_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::armvirt-64::https://downloads.openwrt.org/releases/18.06.0/targets/armvirt/64/openwrt-sdk-18.06.0-armvirt-64_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::at91-sama5d2::https://downloads.openwrt.org/releases/18.06.0/targets/at91/sama5d2/openwrt-sdk-18.06.0-at91-sama5d2_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::at91-sama5d3::https://downloads.openwrt.org/releases/18.06.0/targets/at91/sama5d3/openwrt-sdk-18.06.0-at91-sama5d3_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::at91-sama5d4::https://downloads.openwrt.org/releases/18.06.0/targets/at91/sama5d4/openwrt-sdk-18.06.0-at91-sama5d4_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::bcm53xx::https://downloads.openwrt.org/releases/18.06.0/targets/bcm53xx/generic/openwrt-sdk-18.06.0-bcm53xx_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::brcm2708-bcm2708::https://downloads.openwrt.org/releases/18.06.0/targets/brcm2708/bcm2708/openwrt-sdk-18.06.0-brcm2708-bcm2708_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::brcm2708-bcm2709::https://downloads.openwrt.org/releases/18.06.0/targets/brcm2708/bcm2709/openwrt-sdk-18.06.0-brcm2708-bcm2709_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::brcm2708-bcm2710::https://downloads.openwrt.org/releases/18.06.0/targets/brcm2708/bcm2710/openwrt-sdk-18.06.0-brcm2708-bcm2710_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::brcm47xx::https://downloads.openwrt.org/releases/18.06.0/targets/brcm47xx/generic/openwrt-sdk-18.06.0-brcm47xx-generic_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::brcm47xx-legacy::https://downloads.openwrt.org/releases/18.06.0/targets/brcm47xx/legacy/openwrt-sdk-18.06.0-brcm47xx-legacy_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::brcm47xx-mips74k::https://downloads.openwrt.org/releases/18.06.0/targets/brcm47xx/mips74k/openwrt-sdk-18.06.0-brcm47xx-mips74k_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::brcm63xx::https://downloads.openwrt.org/releases/18.06.0/targets/brcm63xx/generic/openwrt-sdk-18.06.0-brcm63xx-generic_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::brcm63xx-smp::https://downloads.openwrt.org/releases/18.06.0/targets/brcm63xx/smp/openwrt-sdk-18.06.0-brcm63xx-smp_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::cns3xxx::https://downloads.openwrt.org/releases/18.06.0/targets/cns3xxx/generic/openwrt-sdk-18.06.0-cns3xxx_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::gemini::https://downloads.openwrt.org/releases/18.06.0/targets/gemini/generic/openwrt-sdk-18.06.0-gemini_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::imx6::https://downloads.openwrt.org/releases/18.06.0/targets/imx6/generic/openwrt-sdk-18.06.0-imx6_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::ipq40xx::https://downloads.openwrt.org/releases/18.06.0/targets/ipq40xx/generic/openwrt-sdk-18.06.0-ipq40xx_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::ipq806x::https://downloads.openwrt.org/releases/18.06.0/targets/ipq806x/generic/openwrt-sdk-18.06.0-ipq806x_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::ixp4xx::https://downloads.openwrt.org/releases/18.06.0/targets/ixp4xx/generic/openwrt-sdk-18.06.0-ixp4xx-generic_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::ixp4xx-harddisk::https://downloads.openwrt.org/releases/18.06.0/targets/ixp4xx/harddisk/openwrt-sdk-18.06.0-ixp4xx-harddisk_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::kirkwood::https://downloads.openwrt.org/releases/18.06.0/targets/kirkwood/generic/openwrt-sdk-18.06.0-kirkwood_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::lantiq-ase::https://downloads.openwrt.org/releases/18.06.0/targets/lantiq/ase/openwrt-sdk-18.06.0-lantiq-ase_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::lantiq-falcon::https://downloads.openwrt.org/releases/18.06.0/targets/lantiq/falcon/openwrt-sdk-18.06.0-lantiq-falcon_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::lantiq-xrx200::https://downloads.openwrt.org/releases/18.06.0/targets/lantiq/xrx200/openwrt-sdk-18.06.0-lantiq-xrx200_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::lantiq-xway::https://downloads.openwrt.org/releases/18.06.0/targets/lantiq/xway/openwrt-sdk-18.06.0-lantiq-xway_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::lantiq-xway_legacy::https://downloads.openwrt.org/releases/18.06.0/targets/lantiq/xway_legacy/openwrt-sdk-18.06.0-lantiq-xway_legacy_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::layerscape-armv8_32b::https://downloads.openwrt.org/releases/18.06.0/targets/layerscape/armv8_32b/openwrt-sdk-18.06.0-layerscape-armv8_32b_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::layerscape-armv8_64b::https://downloads.openwrt.org/releases/18.06.0/targets/layerscape/armv8_64b/openwrt-sdk-18.06.0-layerscape-armv8_64b_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::malta-be::https://downloads.openwrt.org/releases/18.06.0/targets/malta/be/openwrt-sdk-18.06.0-malta-be_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::mediatek-mt7622::https://downloads.openwrt.org/releases/18.06.0/targets/mediatek/mt7622/openwrt-sdk-18.06.0-mediatek-mt7622_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::mediatek-mt7623::https://downloads.openwrt.org/releases/18.06.0/targets/mediatek/mt7623/openwrt-sdk-18.06.0-mediatek-mt7623_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::mpc85xx::https://downloads.openwrt.org/releases/18.06.0/targets/mpc85xx/generic/openwrt-sdk-18.06.0-mpc85xx-generic_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::mpc85xx-p1020::https://downloads.openwrt.org/releases/18.06.0/targets/mpc85xx/p1020/openwrt-sdk-18.06.0-mpc85xx-p1020_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::mvebu-cortexa53::https://downloads.openwrt.org/releases/18.06.0/targets/mvebu/cortexa53/openwrt-sdk-18.06.0-mvebu-cortexa53_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::mvebu-cortexa72::https://downloads.openwrt.org/releases/18.06.0/targets/mvebu/cortexa72/openwrt-sdk-18.06.0-mvebu-cortexa72_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::mvebu-cortexa9::https://downloads.openwrt.org/releases/18.06.0/targets/mvebu/cortexa9/openwrt-sdk-18.06.0-mvebu-cortexa9_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::mxs::https://downloads.openwrt.org/releases/18.06.0/targets/mxs/generic/openwrt-sdk-18.06.0-mxs_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::octeon::https://downloads.openwrt.org/releases/18.06.0/targets/octeon/generic/openwrt-sdk-18.06.0-octeon_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::octeontx::https://downloads.openwrt.org/releases/18.06.0/targets/octeontx/generic/openwrt-sdk-18.06.0-octeontx_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::omap::https://downloads.openwrt.org/releases/18.06.0/targets/omap/generic/openwrt-sdk-18.06.0-omap_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::oxnas-ox820::https://downloads.openwrt.org/releases/18.06.0/targets/oxnas/ox820/openwrt-sdk-18.06.0-oxnas-ox820_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::pistachio::https://downloads.openwrt.org/releases/18.06.0/targets/pistachio/generic/openwrt-sdk-18.06.0-pistachio_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::ramips-mt7620::https://downloads.openwrt.org/releases/18.06.0/targets/ramips/mt7620/openwrt-sdk-18.06.0-ramips-mt7620_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::ramips-mt7621::https://downloads.openwrt.org/releases/18.06.0/targets/ramips/mt7621/openwrt-sdk-18.06.0-ramips-mt7621_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::ramips-mt76x8::https://downloads.openwrt.org/releases/18.06.0/targets/ramips/mt76x8/openwrt-sdk-18.06.0-ramips-mt76x8_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::ramips-rt288x::https://downloads.openwrt.org/releases/18.06.0/targets/ramips/rt288x/openwrt-sdk-18.06.0-ramips-rt288x_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::ramips-rt305x::https://downloads.openwrt.org/releases/18.06.0/targets/ramips/rt305x/openwrt-sdk-18.06.0-ramips-rt305x_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::ramips-rt3883::https://downloads.openwrt.org/releases/18.06.0/targets/ramips/rt3883/openwrt-sdk-18.06.0-ramips-rt3883_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::rb532::https://downloads.openwrt.org/releases/18.06.0/targets/rb532/generic/openwrt-sdk-18.06.0-rb532_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::sunxi-cortexa53::https://downloads.openwrt.org/releases/18.06.0/targets/sunxi/cortexa53/openwrt-sdk-18.06.0-sunxi-cortexa53_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::sunxi-cortexa7::https://downloads.openwrt.org/releases/18.06.0/targets/sunxi/cortexa7/openwrt-sdk-18.06.0-sunxi-cortexa7_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::sunxi-cortexa8::https://downloads.openwrt.org/releases/18.06.0/targets/sunxi/cortexa8/openwrt-sdk-18.06.0-sunxi-cortexa8_gcc-7.3.0_musl_eabi.Linux-x86_64.tar.xz"
  "18.06.0::x86-64::https://downloads.openwrt.org/releases/18.06.0/targets/x86/64/openwrt-sdk-18.06.0-x86-64_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::x86::https://downloads.openwrt.org/releases/18.06.0/targets/x86/generic/openwrt-sdk-18.06.0-x86-generic_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::x86-geode::https://downloads.openwrt.org/releases/18.06.0/targets/x86/geode/openwrt-sdk-18.06.0-x86-geode_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
  "18.06.0::x86-legacy::https://downloads.openwrt.org/releases/18.06.0/targets/x86/legacy/openwrt-sdk-18.06.0-x86-legacy_gcc-7.3.0_musl.Linux-x86_64.tar.xz"
)
