LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xkbcommon.org/
LINUXDROID_PKG_DESCRIPTION="Keymap handling library for toolkits and window systems"
LINUXDROID_PKG_VERSION=0.8.2
LINUXDROID_PKG_SRCURL=https://github.com/xkbcommon/libxkbcommon/archive/xkbcommon-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=fd19874aefbcbc9da751292ba7abee8952405cd7d9042466e41a9c6ed3046322
LINUXDROID_PKG_DEPENDS="libxcb, xkeyboard-config"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
-Denable-docs=false
-Denable-wayland=false
"
