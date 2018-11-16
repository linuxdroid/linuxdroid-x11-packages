LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xcb.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="Utility libraries for XC Binding - Port of Xlib's XImage and XShmImage functions"
LINUXDROID_PKG_VERSION=0.4.0
LINUXDROID_PKG_REVISION=2
LINUXDROID_PKG_SRCURL=https://xcb.freedesktop.org/dist/xcb-util-image-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=2db96a37d78831d643538dd1b595d7d712e04bdccf8896a5e18ce0f398ea2ffc
LINUXDROID_PKG_DEPENDS="libandroid-shmem, libxcb, xcb-util"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="LIBS=-landroid-shmem"
