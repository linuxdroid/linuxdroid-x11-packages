LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X cursor management library"
LINUXDROID_PKG_VERSION=1.1.15
LINUXDROID_PKG_REVISION=7
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXcursor-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=294e670dd37cd23995e69aae626629d4a2dfe5708851bbc13d032401b7a3df6b
LINUXDROID_PKG_DEPENDS="libx11, libxfixes, libxrender"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
