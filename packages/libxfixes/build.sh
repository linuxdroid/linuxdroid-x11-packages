LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 miscellaneous 'fixes' extension library"
LINUXDROID_PKG_VERSION=5.0.3
LINUXDROID_PKG_REVISION=4
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXfixes-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=de1cd33aff226e08cefd0e6759341c2c8e8c9faf8ce9ac6ec38d43e287b22ad6
LINUXDROID_PKG_DEPENDS="libx11"
LINUXDROID_PKG_BUILD_DEPENDS="xorgproto, xorg-util-macros"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xorgproto"
