LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 XFree86 video mode extension library"
LINUXDROID_PKG_VERSION=1.1.4
LINUXDROID_PKG_REVISION=4
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXxf86vm-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=afee27f93c5f31c0ad582852c0fb36d50e4de7cd585fcf655e278a633d85cd57
LINUXDROID_PKG_DEPENDS="libandroid-support, libx11, libxau, libxcb, libxdmcp, libxext"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xorgproto"
LINUXDROID_PKG_BUILD_DEPENDS="xorgproto, xorg-util-macros"
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--enable-malloc0returnsnull"
