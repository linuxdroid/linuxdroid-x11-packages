LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 font rasterisation library"
LINUXDROID_PKG_VERSION=2.0.3
LINUXDROID_PKG_REVISION=4
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXfont2-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=0e8ab7fd737ccdfe87e1f02b55f221f0bd4503a1c5f28be4ed6a54586bac9c4e
LINUXDROID_PKG_DEPENDS="freetype, libfontenc"
LINUXDROID_PKG_BUILD_DEPENDS="xorgproto, xorg-util-macros, xtrans"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xorgproto, xtrans"
