LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://launchpad.net/loqui
LINUXDROID_PKG_DESCRIPTION="IRC client for the Gtk+-2.0 environment"
LINUXDROID_PKG_VERSION=0.6.4
LINUXDROID_PKG_SRCURL=http://launchpad.net/loqui/${LINUXDROID_PKG_VERSION:0:3}/${LINUXDROID_PKG_VERSION}/+download/loqui-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=d0718f0eb095fbfe2af1b4ca5a0d05cd85e969322be3f5bc9fad26f042910b36
LINUXDROID_PKG_DEPENDS="atk, fontconfig, freetype, gdk-pixbuf, glib, gtk2, libandroid-support, libandroid-shmem, libcairo-x, libffi, pango-x, pcre"
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--disable-glibtest --disable-gtktest"
LINUXDROID_PKG_RM_AFTER_INSTALL="lib/locale"

linuxdroid_step_pre_configure() {
    export CFLAGS="${CFLAGS} -Wno-return-type"
    export LIBS="-landroid-shmem"
}
