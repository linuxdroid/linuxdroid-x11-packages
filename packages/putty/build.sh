LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://www.chiark.greenend.org.uk/~sgtatham/putty/
LINUXDROID_PKG_DESCRIPTION="A terminal integrated SSH/Telnet client"
LINUXDROID_PKG_VERSION=0.70
LINUXDROID_PKG_SRCURL=https://the.earth.li/~sgtatham/putty/${LINUXDROID_PKG_VERSION}/putty-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=bb8aa49d6e96c5a8e18a057f3150a1695ed99a24eef699e783651d1f24e7b0be
LINUXDROID_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, libandroid-glob, libandroid-shmem, libcairo-x, libx11, pango-x"

linuxdroid_step_pre_configure() {
    export CFLAGS="${CFLAGS} -Wno-deprecated-declarations"
    export LIBS="-landroid-glob -landroid-shmem"
}
