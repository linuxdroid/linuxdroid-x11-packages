LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 keyboard file manipulation library"
LINUXDROID_PKG_VERSION=1.0.9
LINUXDROID_PKG_REVISION=5
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libxkbfile-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=51817e0530961975d9513b773960b4edd275f7d5c72293d5a151ed4f42aeb16a
LINUXDROID_PKG_DEPENDS="libandroid-support, libx11, libxau, libxcb, libxdmcp"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
