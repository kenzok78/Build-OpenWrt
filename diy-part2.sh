#!/bin/bash
# --------------------------------------------------------
# Script to compile and create files for each openwrt
# --------------------------------------------------------
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate

date=`date +%m.%d`
date1=`date +%h`
sed -i "s/DISTRIB_DESCRIPTION.*/DISTRIB_DESCRIPTION=\"0penwrt'\"/g" package/base-files/files/etc/openwrt_release
sed -i "s/DISTRIB_REVISION.*/DISTRIB_REVISION=\"$date'\"/g" package/base-files/files/etc/openwrt_release
sed -i "s/%C.*/%C=\"$date1'\"/g" package/base-files/files/etc/openwrt_version
sed -i "s/ %D %V, %C.*/ %D %V, %C=\"$date1 by kenzo'\"/g"  package/base-files/files/etc/banner

exit



