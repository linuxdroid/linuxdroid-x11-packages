LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 miscellaneous extensions library"
LINUXDROID_PKG_VERSION=1.3.3
LINUXDROID_PKG_REVISION=4
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXext-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=b518d4d332231f313371fdefac59e3776f4f0823bcb23cf7c7305bfb57b16e35
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--enable-malloc0returnsnull"
LINUXDROID_PKG_DEPENDS="libandroid-support, libx11, libxau, libxcb, libxdmcp"
LINUXDROID_PKG_BUILD_DEPENDS="xorgproto, xorg-util-macros"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xorgproto"
