LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X.Org Autotools macros"
LINUXDROID_PKG_VERSION=1.19.2
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/util/util-macros-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=d7e43376ad220411499a79735020f9d145fdc159284867e99467e0d771f3e712
LINUXDROID_PKG_PLATFORM_INDEPENDENT=true

linuxdroid_step_post_make_install () {
    mkdir -p ${LINUXDROID_PREFIX}/lib/pkgconfig
    mv ${LINUXDROID_PREFIX}/share/pkgconfig/xorg-macros.pc ${LINUXDROID_PREFIX}/lib/pkgconfig/
}
