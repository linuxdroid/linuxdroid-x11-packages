LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 miscellaneous micro-utility library"
LINUXDROID_PKG_VERSION=1.1.2
LINUXDROID_PKG_REVISION=6
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXmu-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=756edc7c383254eef8b4e1b733c3bf1dc061b523c9f9833ac7058378b8349d0b
LINUXDROID_PKG_DEPENDS="libandroid-support, libice, libsm, libuuid, libx11, libxau, libxcb, libxdmcp, libxext, libxt"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
