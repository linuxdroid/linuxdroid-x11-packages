LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://www.gnupg.org/related_software/pinentry/index.html
LINUXDROID_PKG_DESCRIPTION="Dialog allowing secure password entry (with gtk2 support)"
LINUXDROID_PKG_VERSION=1.1.0
LINUXDROID_PKG_SHA256=68076686fa724a290ea49cdf0d1c0c1500907d1b759a3bcbfbec0293e8f56570
LINUXDROID_PKG_SRCURL=https://www.gnupg.org/ftp/gcrypt/pinentry/pinentry-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_DEPENDS="atk, fontconfig, freetype, gdk-pixbuf, glib, gtk2, libandroid-shmem, libandroid-support, libassuan, libcairo-x, libgpg-error, ncurses, pango-x"

LINUXDROID_PKG_CONFLICTS="pinentry"
LINUXDROID_PKG_REPLACES="pinentry"
LINUXDROID_PKG_PROVIDES="pinentry"

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
--disable-pinentry-fltk
--disable-pinentry-qt5
--enable-pinentry-gtk2
"

linuxdroid_step_pre_configure() {
    export LIBS="-landroid-shmem"
}
