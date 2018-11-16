LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 RandR extension library"
LINUXDROID_PKG_VERSION=1.5.1
LINUXDROID_PKG_REVISION=4
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXrandr-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=1ff9e7fa0e4adea912b16a5f0cfa7c1d35b0dcda0e216831f7715c8a3abcf51a
LINUXDROID_PKG_DEPENDS="libx11, libxext, libxrender"
LINUXDROID_PKG_BUILD_DEPENDS="xorgproto, xorg-util-macros"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xorgproto"
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--enable-malloc0returnsnull"
