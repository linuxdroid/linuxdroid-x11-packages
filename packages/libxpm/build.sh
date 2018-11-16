LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 pixmap library"
LINUXDROID_PKG_VERSION=3.5.12
LINUXDROID_PKG_REVISION=6
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXpm-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=fd6a6de3da48de8d1bb738ab6be4ad67f7cb0986c39bd3f7d51dd24f7854bdec
LINUXDROID_PKG_DEPENDS="libx11, libxext, libxt"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
