LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 Testing -- Resource extension library"
LINUXDROID_PKG_VERSION=1.2.3
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXtst-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=4655498a1b8e844e3d6f21f3b2c4e2b571effb5fd83199d428a6ba7ea4bf5204
LINUXDROID_PKG_DEPENDS="libx11, libxext, libxi"
LINUXDROID_PKG_BUILD_DEPENDS="libxfixes, xorg-util-macros"
