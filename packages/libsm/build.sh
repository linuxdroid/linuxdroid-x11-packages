LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 Session Management library"
LINUXDROID_PKG_VERSION=1.2.3
LINUXDROID_PKG_REVISION=2
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libSM-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=2d264499dcb05f56438dee12a1b4b71d76736ce7ba7aa6efbf15ebb113769cbb
LINUXDROID_PKG_DEPENDS="libice, libuuid"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros, xtrans"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xtrans"
