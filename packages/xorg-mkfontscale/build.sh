LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="Create an index of scalable font files for X"
LINUXDROID_PKG_VERSION=1.1.3
LINUXDROID_PKG_REVISION=2
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/archive/individual/app/mkfontscale-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=1e98df69ee5f4542d711e140e1d93e2c3f2775407ccbb7849110d52b91782a6a
LINUXDROID_PKG_DEPENDS="freetype, libfontenc"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros, xorgproto"
