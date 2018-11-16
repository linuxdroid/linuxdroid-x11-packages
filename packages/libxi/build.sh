LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 Input extension library"
LINUXDROID_PKG_VERSION=1.7.9
LINUXDROID_PKG_REVISION=7
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXi-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=c2e6b8ff84f9448386c1b5510a5cf5a16d788f76db018194dacdc200180faf45
LINUXDROID_PKG_DEPENDS="libandroid-support, libx11, libxau, libxcb, libxdmcp, libxext"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xorgproto"
LINUXDROID_PKG_BUILD_DEPENDS="libxfixes, xorgproto, xorg-util-macros"
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--enable-malloc0returnsnull"
