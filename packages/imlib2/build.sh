LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://sourceforge.net/projects/enlightenment/
LINUXDROID_PKG_DESCRIPTION="Library that does image file loading and saving as well as rendering, manipulation, arbitrary polygon support"
LINUXDROID_PKG_VERSION=1.5.1
LINUXDROID_PKG_REVISION=1
LINUXDROID_PKG_SRCURL=http://downloads.sourceforge.net/enlightenment/imlib2-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=b25df9347648cf3dfb784c099139ab24157b1dbd1baa9428f103b683b8a78c61
LINUXDROID_PKG_DEPENDS="freetype, giflib, libandroid-shmem, libbz2, libid3tag, libjpeg-turbo, libpng, libtiff, libxext"
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="LIBS=-landroid-shmem"
