LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xcb.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 client-side library"
LINUXDROID_PKG_VERSION=1.13.1
LINUXDROID_PKG_SRCURL=https://xcb.freedesktop.org/dist/libxcb-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=a89fb7af7a11f43d2ce84a844a4b38df688c092bf4b67683aef179cdf2a647c4
LINUXDROID_PKG_DEPENDS="libxau, libxdmcp"
LINUXDROID_PKG_BUILD_DEPENDS="xcb-proto, xorg-util-macros"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xcb-proto"
LINUXDROID_PKG_RECOMMENDS="xorg-xauth"
