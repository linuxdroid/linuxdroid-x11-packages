LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 Screen Saver extension library"
LINUXDROID_PKG_VERSION=1.2.3
LINUXDROID_PKG_REVISION=1
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXScrnSaver-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=f917075a1b7b5a38d67a8b0238eaab14acd2557679835b154cf2bca576e89bf8
LINUXDROID_PKG_DEPENDS="libandroid-support, libx11, libxau, libxcb, libxdmcp, libxext"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xorgproto"
LINUXDROID_PKG_BUILD_DEPENDS="xorgproto, xorg-util-macros"
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--enable-malloc0returnsnull"
