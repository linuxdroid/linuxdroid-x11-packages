LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://mtpaint.sourceforge.net/
LINUXDROID_PKG_DESCRIPTION="Simple paint program for creating icons and pixel based artwork"
LINUXDROID_PKG_VERSION=3.40
LINUXDROID_PKG_REVISION=4
LINUXDROID_PKG_SRCURL=https://downloads.sourceforge.net/mtpaint/mtpaint-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=ef321d2b404839c7b909bdf5283eb22a37fbdd35b4cc9e380ddc400573d7c890
LINUXDROID_PKG_DEPENDS="atk, fontconfig, freetype, gdk-pixbuf, giflib, glib, gtk2, libandroid-glob, libandroid-shmem, libcairo-x, libjpeg-turbo, littlecms, pango-x, libpng, libtiff, libx11"
LINUXDROID_PKG_RECOMMENDS="gifsicle"
LINUXDROID_PKG_BUILD_IN_SRC=true
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--mandir=${LINUXDROID_PREFIX}/share/man man GIF jpeg tiff cflags lcms2"

linuxdroid_step_pre_configure() {
    export LDFLAGS="${LDFLAGS} -landroid-glob -landroid-shmem"
}
