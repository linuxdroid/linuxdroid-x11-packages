LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 Direct Graphics Access extension library"
LINUXDROID_PKG_VERSION=1.1.4
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXxf86dga-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=8eecd4b6c1df9a3704c04733c2f4fa93ef469b55028af5510b25818e2456c77e
LINUXDROID_PKG_DEPENDS="libandroid-support, libx11, libxau, libxcb, libxdmcp, libxext"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
