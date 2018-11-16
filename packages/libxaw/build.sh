LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 Athena Widget library"
LINUXDROID_PKG_VERSION=1.0.13
LINUXDROID_PKG_REVISION=7
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXaw-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=8ef8067312571292ccc2bbe94c41109dcf022ea5a4ec71656a83d8cce9edb0cd
LINUXDROID_PKG_DEPENDS="libandroid-support, libice, libsm, libuuid, libx11, libxau, libxcb, libxdmcp, libxext, libxmu, libxpm, libxt"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
