LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://gpg-crypter.sourceforge.net/
LINUXDROID_PKG_DESCRIPTION="A graphical front-end to GnuPG(GPG) using the GTK3 toolkit and libgpgme"
LINUXDROID_PKG_VERSION=0.4.1
LINUXDROID_PKG_SRCURL=http://downloads.sourceforge.net/sourceforge/gpg-crypter/gpg-crypter-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=1f7e2b27bf4a27ecbb07bce9cd40d1c08477a3bd065ba7d1a75d1732e4bdc023
LINUXDROID_PKG_DEPENDS="atk, gdk-pixbuf, glib, gpgme, gtk3, libandroid-shmem, libassuan, libcairo-x, libgpg-error, pango-x, pinentry-gtk"
LINUXDROID_PKG_RM_AFTER_INSTALL="lib/locale"

linuxdroid_step_pre_configure() {
    export LIBS="-landroid-shmem"
}
