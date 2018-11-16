LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 Xinerama extension library"
LINUXDROID_PKG_VERSION=1.1.4
LINUXDROID_PKG_REVISION=1
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXinerama-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=0008dbd7ecf717e1e507eed1856ab0d9cf946d03201b85d5dcf61489bb02d720
LINUXDROID_PKG_DEPENDS="libandroid-support, libx11, libxau, libxcb, libxdmcp, libxext"
LINUXDROID_PKG_BUILD_DEPENDS="xorgproto"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xorgproto"
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--enable-malloc0returnsnull"
