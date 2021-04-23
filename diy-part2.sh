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
sed -i 's/192.168.1.1/192.168.3.251/g' package/base-files/files/bin/config_generate

# 修改固件生成名字,增加当天日期
sed -i '/DISTRIB_REVISION/d' /etc/openwrt_release
echo "DISTRIB_REVISION='small'" >> /etc/openwrt_release
sed -i '/DISTRIB_DESCRIPTION/d' /etc/openwrt_release
echo "DISTRIB_DESCRIPTION='openwrt '" >> /etc/openwrt_release

sed -i 's/LuCI Master/kenzo/g' /usr/lib/lua/luci/version.lua
sed -i 's/LuCI openwrt-18.06 branch/kenzo/g' /usr/lib/lua/luci/version.lua
sed -i 's/LuCI 17.01 Lienol/kenzo/g' /usr/lib/lua/luci/version.lua
sed -i '/luciversion/d' /usr/lib/lua/luci/version.lua
echo 'luciversion = "Apr"' >> /usr/lib/lua/luci/version.lua

