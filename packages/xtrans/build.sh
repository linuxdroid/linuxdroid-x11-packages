LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X transport library"
LINUXDROID_PKG_VERSION=1.3.5
LINUXDROID_PKG_REVISION=4
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/xtrans-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=adbd3b36932ce4c062cd10f57d78a156ba98d618bdb6f50664da327502bc8301
LINUXDROID_PKG_NO_DEVELSPLIT=true
LINUXDROID_PKG_PLATFORM_INDEPENDENT=true

linuxdroid_step_post_make_install () {
    mkdir -p ${LINUXDROID_PREFIX}/lib/pkgconfig
    mv ${LINUXDROID_PREFIX}/share/pkgconfig/xtrans.pc ${LINUXDROID_PREFIX}/lib/pkgconfig
}
