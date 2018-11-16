LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="Classic X utility to set your root window background to a given pattern or color"
LINUXDROID_PKG_VERSION=1.1.2
LINUXDROID_PKG_REVISION=2
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/archive/individual/app/xsetroot-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=10c442ba23591fb5470cea477a0aa5f679371f4f879c8387a1d9d05637ae417c
LINUXDROID_PKG_DEPENDS="libx11, libxcursor, libxmu"
LINUXDROID_PKG_BUILD_DEPENDS="xbitmaps, xorg-util-macros"
