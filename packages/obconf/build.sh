LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://openbox.org/wiki/ObConf:About
LINUXDROID_PKG_DESCRIPTION="A configuration tool for the Openbox window manager"
LINUXDROID_PKG_VERSION=2.0.4
LINUXDROID_PKG_SRCURL=http://openbox.org/dist/obconf/obconf-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=71a3e5f4ee246a27421ba85044f09d449f8de22680944ece9c471cd46a9356b9
LINUXDROID_PKG_DEPENDS="atk, fontconfig, freetype, gdk-pixbuf, glib, gtk2, imlib2, libandroid-shmem, libcairo-x, libglade, libice, librsvg, libsm, libx11, libxft, libxml2, openbox, pango-x, startup-notification"

linuxdroid_step_pre_configure() {
    export LIBS="-lgmodule-2.0 -landroid-shmem"
}
