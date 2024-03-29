sdk_sources=(
  "21.02.3::apm821xx-nand::https://downloads.openwrt.org/releases/21.02.3/targets/apm821xx/nand/openwrt-sdk-21.02.3-apm821xx-nand_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::apm821xx-sata::https://downloads.openwrt.org/releases/21.02.3/targets/apm821xx/sata/openwrt-sdk-21.02.3-apm821xx-sata_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::arc770::https://downloads.openwrt.org/releases/21.02.3/targets/arc770/generic/openwrt-sdk-21.02.3-arc770-generic_gcc-8.4.0_glibc.Linux-x86_64.tar.xz"
  "21.02.3::archs38::https://downloads.openwrt.org/releases/21.02.3/targets/archs38/generic/openwrt-sdk-21.02.3-archs38-generic_gcc-8.4.0_glibc.Linux-x86_64.tar.xz"
  "21.02.3::armvirt-32::https://downloads.openwrt.org/releases/21.02.3/targets/armvirt/32/openwrt-sdk-21.02.3-armvirt-32_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::armvirt-64::https://downloads.openwrt.org/releases/21.02.3/targets/armvirt/64/openwrt-sdk-21.02.3-armvirt-64_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::at91-sam9x::https://downloads.openwrt.org/releases/21.02.3/targets/at91/sam9x/openwrt-sdk-21.02.3-at91-sam9x_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::at91-sama5::https://downloads.openwrt.org/releases/21.02.3/targets/at91/sama5/openwrt-sdk-21.02.3-at91-sama5_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::ath25::https://downloads.openwrt.org/releases/21.02.3/targets/ath25/generic/openwrt-sdk-21.02.3-ath25_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::ath79::https://downloads.openwrt.org/releases/21.02.3/targets/ath79/generic/openwrt-sdk-21.02.3-ath79-generic_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::ath79-mikrotik::https://downloads.openwrt.org/releases/21.02.3/targets/ath79/mikrotik/openwrt-sdk-21.02.3-ath79-mikrotik_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::ath79-nand::https://downloads.openwrt.org/releases/21.02.3/targets/ath79/nand/openwrt-sdk-21.02.3-ath79-nand_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::ath79-tiny::https://downloads.openwrt.org/releases/21.02.3/targets/ath79/tiny/openwrt-sdk-21.02.3-ath79-tiny_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::bcm27xx-bcm2708::https://downloads.openwrt.org/releases/21.02.3/targets/bcm27xx/bcm2708/openwrt-sdk-21.02.3-bcm27xx-bcm2708_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::bcm27xx-bcm2709::https://downloads.openwrt.org/releases/21.02.3/targets/bcm27xx/bcm2709/openwrt-sdk-21.02.3-bcm27xx-bcm2709_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::bcm27xx-bcm2710::https://downloads.openwrt.org/releases/21.02.3/targets/bcm27xx/bcm2710/openwrt-sdk-21.02.3-bcm27xx-bcm2710_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::bcm27xx-bcm2711::https://downloads.openwrt.org/releases/21.02.3/targets/bcm27xx/bcm2711/openwrt-sdk-21.02.3-bcm27xx-bcm2711_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::bcm47xx::https://downloads.openwrt.org/releases/21.02.3/targets/bcm47xx/generic/openwrt-sdk-21.02.3-bcm47xx-generic_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::bcm47xx-legacy::https://downloads.openwrt.org/releases/21.02.3/targets/bcm47xx/legacy/openwrt-sdk-21.02.3-bcm47xx-legacy_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::bcm47xx-mips74k::https://downloads.openwrt.org/releases/21.02.3/targets/bcm47xx/mips74k/openwrt-sdk-21.02.3-bcm47xx-mips74k_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::bcm4908::https://downloads.openwrt.org/releases/21.02.3/targets/bcm4908/generic/openwrt-sdk-21.02.3-bcm4908-generic_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::bcm53xx::https://downloads.openwrt.org/releases/21.02.3/targets/bcm53xx/generic/openwrt-sdk-21.02.3-bcm53xx-generic_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::bcm63xx::https://downloads.openwrt.org/releases/21.02.3/targets/bcm63xx/generic/openwrt-sdk-21.02.3-bcm63xx-generic_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::bcm63xx-smp::https://downloads.openwrt.org/releases/21.02.3/targets/bcm63xx/smp/openwrt-sdk-21.02.3-bcm63xx-smp_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::gemini::https://downloads.openwrt.org/releases/21.02.3/targets/gemini/generic/openwrt-sdk-21.02.3-gemini_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::imx6::https://downloads.openwrt.org/releases/21.02.3/targets/imx6/generic/openwrt-sdk-21.02.3-imx6_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::ipq40xx::https://downloads.openwrt.org/releases/21.02.3/targets/ipq40xx/generic/openwrt-sdk-21.02.3-ipq40xx-generic_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::ipq40xx-mikrotik::https://downloads.openwrt.org/releases/21.02.3/targets/ipq40xx/mikrotik/openwrt-sdk-21.02.3-ipq40xx-mikrotik_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::ipq806x::https://downloads.openwrt.org/releases/21.02.3/targets/ipq806x/generic/openwrt-sdk-21.02.3-ipq806x-generic_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::kirkwood::https://downloads.openwrt.org/releases/21.02.3/targets/kirkwood/generic/openwrt-sdk-21.02.3-kirkwood_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::lantiq-ase::https://downloads.openwrt.org/releases/21.02.3/targets/lantiq/ase/openwrt-sdk-21.02.3-lantiq-ase_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::lantiq-xrx200::https://downloads.openwrt.org/releases/21.02.3/targets/lantiq/xrx200/openwrt-sdk-21.02.3-lantiq-xrx200_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::lantiq-xway::https://downloads.openwrt.org/releases/21.02.3/targets/lantiq/xway/openwrt-sdk-21.02.3-lantiq-xway_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::lantiq-xway_legacy::https://downloads.openwrt.org/releases/21.02.3/targets/lantiq/xway_legacy/openwrt-sdk-21.02.3-lantiq-xway_legacy_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::layerscape-armv7::https://downloads.openwrt.org/releases/21.02.3/targets/layerscape/armv7/openwrt-sdk-21.02.3-layerscape-armv7_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::layerscape-armv8_64b::https://downloads.openwrt.org/releases/21.02.3/targets/layerscape/armv8_64b/openwrt-sdk-21.02.3-layerscape-armv8_64b_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::malta-be::https://downloads.openwrt.org/releases/21.02.3/targets/malta/be/openwrt-sdk-21.02.3-malta-be_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::mediatek-mt7622::https://downloads.openwrt.org/releases/21.02.3/targets/mediatek/mt7622/openwrt-sdk-21.02.3-mediatek-mt7622_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::mediatek-mt7623::https://downloads.openwrt.org/releases/21.02.3/targets/mediatek/mt7623/openwrt-sdk-21.02.3-mediatek-mt7623_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::mediatek-mt7629::https://downloads.openwrt.org/releases/21.02.3/targets/mediatek/mt7629/openwrt-sdk-21.02.3-mediatek-mt7629_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::mpc85xx-p1010::https://downloads.openwrt.org/releases/21.02.3/targets/mpc85xx/p1010/openwrt-sdk-21.02.3-mpc85xx-p1010_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::mpc85xx-p1020::https://downloads.openwrt.org/releases/21.02.3/targets/mpc85xx/p1020/openwrt-sdk-21.02.3-mpc85xx-p1020_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::mpc85xx-p2020::https://downloads.openwrt.org/releases/21.02.3/targets/mpc85xx/p2020/openwrt-sdk-21.02.3-mpc85xx-p2020_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::mvebu-cortexa53::https://downloads.openwrt.org/releases/21.02.3/targets/mvebu/cortexa53/openwrt-sdk-21.02.3-mvebu-cortexa53_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::mvebu-cortexa72::https://downloads.openwrt.org/releases/21.02.3/targets/mvebu/cortexa72/openwrt-sdk-21.02.3-mvebu-cortexa72_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::mvebu-cortexa9::https://downloads.openwrt.org/releases/21.02.3/targets/mvebu/cortexa9/openwrt-sdk-21.02.3-mvebu-cortexa9_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::mxs::https://downloads.openwrt.org/releases/21.02.3/targets/mxs/generic/openwrt-sdk-21.02.3-mxs_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::octeon::https://downloads.openwrt.org/releases/21.02.3/targets/octeon/generic/openwrt-sdk-21.02.3-octeon_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::octeontx::https://downloads.openwrt.org/releases/21.02.3/targets/octeontx/generic/openwrt-sdk-21.02.3-octeontx_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::omap::https://downloads.openwrt.org/releases/21.02.3/targets/omap/generic/openwrt-sdk-21.02.3-omap_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::oxnas-ox820::https://downloads.openwrt.org/releases/21.02.3/targets/oxnas/ox820/openwrt-sdk-21.02.3-oxnas-ox820_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::pistachio::https://downloads.openwrt.org/releases/21.02.3/targets/pistachio/generic/openwrt-sdk-21.02.3-pistachio_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::ramips-mt7620::https://downloads.openwrt.org/releases/21.02.3/targets/ramips/mt7620/openwrt-sdk-21.02.3-ramips-mt7620_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::ramips-mt7621::https://downloads.openwrt.org/releases/21.02.3/targets/ramips/mt7621/openwrt-sdk-21.02.3-ramips-mt7621_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::ramips-mt76x8::https://downloads.openwrt.org/releases/21.02.3/targets/ramips/mt76x8/openwrt-sdk-21.02.3-ramips-mt76x8_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::ramips-rt288x::https://downloads.openwrt.org/releases/21.02.3/targets/ramips/rt288x/openwrt-sdk-21.02.3-ramips-rt288x_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::ramips-rt305x::https://downloads.openwrt.org/releases/21.02.3/targets/ramips/rt305x/openwrt-sdk-21.02.3-ramips-rt305x_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::ramips-rt3883::https://downloads.openwrt.org/releases/21.02.3/targets/ramips/rt3883/openwrt-sdk-21.02.3-ramips-rt3883_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::realtek::https://downloads.openwrt.org/releases/21.02.3/targets/realtek/generic/openwrt-sdk-21.02.3-realtek-generic_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::rockchip-armv8::https://downloads.openwrt.org/releases/21.02.3/targets/rockchip/armv8/openwrt-sdk-21.02.3-rockchip-armv8_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::sunxi-cortexa53::https://downloads.openwrt.org/releases/21.02.3/targets/sunxi/cortexa53/openwrt-sdk-21.02.3-sunxi-cortexa53_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::sunxi-cortexa7::https://downloads.openwrt.org/releases/21.02.3/targets/sunxi/cortexa7/openwrt-sdk-21.02.3-sunxi-cortexa7_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::sunxi-cortexa8::https://downloads.openwrt.org/releases/21.02.3/targets/sunxi/cortexa8/openwrt-sdk-21.02.3-sunxi-cortexa8_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::tegra::https://downloads.openwrt.org/releases/21.02.3/targets/tegra/generic/openwrt-sdk-21.02.3-tegra_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
  "21.02.3::x86-64::https://downloads.openwrt.org/releases/21.02.3/targets/x86/64/openwrt-sdk-21.02.3-x86-64_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::x86::https://downloads.openwrt.org/releases/21.02.3/targets/x86/generic/openwrt-sdk-21.02.3-x86-generic_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::x86-geode::https://downloads.openwrt.org/releases/21.02.3/targets/x86/geode/openwrt-sdk-21.02.3-x86-geode_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::x86-legacy::https://downloads.openwrt.org/releases/21.02.3/targets/x86/legacy/openwrt-sdk-21.02.3-x86-legacy_gcc-8.4.0_musl.Linux-x86_64.tar.xz"
  "21.02.3::zynq::https://downloads.openwrt.org/releases/21.02.3/targets/zynq/generic/openwrt-sdk-21.02.3-zynq_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz"
)
