LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 client-side library"
LINUXDROID_PKG_VERSION=1.6.7
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libX11-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=910e9e30efba4ad3672ca277741c2728aebffa7bc526f04dcfa74df2e52a1348
LINUXDROID_PKG_DEPENDS="libandroid-support, libxcb"
LINUXDROID_PKG_BUILD_DEPENDS="xorgproto, xorg-util-macros, xtrans"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xorgproto, xtrans"
LINUXDROID_PKG_RECOMMENDS="xorg-xauth"
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--disable-xthreads --enable-malloc0returnsnull"

linuxdroid_step_post_make_install() {
	ln -sfr "${LINUXDROID_PREFIX}/lib/libX11.so" "${LINUXDROID_PREFIX}/lib/libX11.so.6"
}
