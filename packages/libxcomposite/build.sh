LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 Composite extension library"
LINUXDROID_PKG_VERSION=0.4.4
LINUXDROID_PKG_REVISION=6
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXcomposite-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=ede250cd207d8bee4a338265c3007d7a68d5aca791b6ac41af18e9a2aeb34178
LINUXDROID_PKG_DEPENDS="libandroid-support, libx11, libxau, libxcb, libxdmcp"
LINUXDROID_PKG_BUILD_DEPENDS="xorgproto, xorg-util-macros"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xorgproto"
