LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 damaged region extension library"
LINUXDROID_PKG_VERSION=1.1.4
LINUXDROID_PKG_REVISION=6
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXdamage-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=7c3fe7c657e83547f4822bfde30a90d84524efb56365448768409b77f05355ad
LINUXDROID_PKG_DEPENDS="libandroid-support, libx11, libxau, libxcb, libxdmcp, libxfixes"
LINUXDROID_PKG_BUILD_DEPENDS="xorgproto"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xorgproto"
