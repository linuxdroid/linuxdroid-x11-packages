LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://feh.finalrewind.org/
LINUXDROID_PKG_DESCRIPTION="Fast and light imlib2-based image viewer"
LINUXDROID_PKG_VERSION=2.28.1
LINUXDROID_PKG_SRCURL=https://feh.finalrewind.org/feh-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=97066765c61d7413ed40b20f3f62b5d934e94ec91cadd491ebce836e1fb02a72
LINUXDROID_PKG_DEPENDS="imlib2, libandroid-shmem, libcurl, libexif, libpng, libx11, libxinerama"
LINUXDROID_PKG_BUILD_DEPENDS="libxt"
LINUXDROID_PKG_BUILD_IN_SRC=true
LINUXDROID_PKG_EXTRA_MAKE_ARGS="exif=1 help=1 verscmp=0"

linuxdroid_step_pre_configure() {
    CFLAGS+=" -I${LINUXDROID_PREFIX}/include"
}
