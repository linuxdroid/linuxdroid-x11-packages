LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://ugetdm.com/
LINUXDROID_PKG_DESCRIPTION="GTK+ download manager featuring download classification and HTML import"
LINUXDROID_PKG_VERSION=2.2.1
LINUXDROID_PKG_REVISION=1
LINUXDROID_PKG_SRCURL=https://downloads.sourceforge.net/urlget/uget-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=445cf58799a9a06e08cd4180b172f4b0a8a8c2ee82da732bdfe2dd502d949936
LINUXDROID_PKG_DEPENDS="atk, gdk-pixbuf, glib, gstreamer, gtk3, libandroid-shmem, libcairo-x, libcurl, libnotify, openssl, pango-x"
LINUXDROID_PKG_SUGGESTS="aria2"
LINUXDROID_PKG_RM_AFTER_INSTALL="lib/locale"

linuxdroid_step_pre_configure() {
    export LIBS="-landroid-shmem"
}

linuxdroid_step_post_make_install() {
    ln -sfr "${LINUXDROID_PREFIX}/bin/uget-gtk" "${LINUXDROID_PREFIX}/bin/uget"
}
