#!/bin/bash
# --------------------------------------------------------
# Script to compile and create files for each openwrt
# --------------------------------------------------------
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.1.252/g' package/base-files/files/bin/config_generate
sed -i 's/DEFAULT_PACKAGES +=/DEFAULT_PACKAGES += lm-sensors-detect kmod-r8125 kmod-vmxnet3  kmod-igc/' target/linux/x86/Makefile

echo '
CONFIG_CRYPTO_CHACHA20_X86_64=y
CONFIG_CRYPTO_POLY1305_X86_64=y
CONFIG_DRM=y
CONFIG_DRM_I915=y
' >> ./target/linux/x86/config-5.10

sed -i "s/enabled '0'/enabled '1'/g" feeds/packages/utils/irqbalance/files/irqbalance.config






