LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://galculator.sourceforge.net/
LINUXDROID_PKG_DESCRIPTION="GTK+ based scientific calculator"
LINUXDROID_PKG_VERSION=2.1.4
LINUXDROID_PKG_REVISION=4
LINUXDROID_PKG_SRCURL=http://galculator.mnim.org/downloads/galculator-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=01cfafe6606e7ec45facb708ef85efd6c1e8bb41001a999d28212a825ef778ae
LINUXDROID_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, libandroid-shmem, libcairo-x, pango-x"

linuxdroid_step_pre_configure() {
    export LIBS="-landroid-shmem"
}
