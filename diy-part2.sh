#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate

# 修改版本号
sed -i 's/kenzo/V${{ env.DATE }}/g' package/base-files/files/etc/banner

# 自定义固件
rm -rf package/default-settings/files/zzz-default-settings
cp -f ../zzz-default-settings package/*/*/default-settings/files/

# 修改版本号
cid=$(date "+%Y-%m-%d")
sed -i 's/kenzo/R[${cid}]/g' package/*/*/default-settings/files/zzz-default-settings

