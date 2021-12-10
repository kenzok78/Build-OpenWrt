FROM scratch

MAINTAINER kenzok8 "https://github.com/kenzok78/Build-OpenWrt"

ADD ${{ env.VERSION }}-${{matrix.target}}.gz /
