LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://aterm.sourceforge.net/
LINUXDROID_PKG_DESCRIPTION="An xterm replacement with transparency support"
LINUXDROID_PKG_VERSION=1.0.1
LINUXDROID_PKG_REVISION=6
LINUXDROID_PKG_SRCURL=http://downloads.sourceforge.net/sourceforge/aterm/aterm-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=a161c3b2d9c7149130a41963899993af21eae92e8e362f4b5b3c7c4cb16760ce
LINUXDROID_PKG_DEPENDS="libice, libsm, libx11, libxext"
LINUXDROID_PKG_BUILD_DEPENDS="libxt"
LINUXDROID_PKG_BUILD_IN_SRC=true

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
--enable-transparency=yes
--enable-background-image
--enable-fading
--enable-menubar
--enable-graphics
"
