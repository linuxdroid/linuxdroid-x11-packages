LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X.org Bitmap files"
LINUXDROID_PKG_VERSION=1.1.2
LINUXDROID_PKG_REVISION=5
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/data/xbitmaps-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=b9f0c71563125937776c8f1f25174ae9685314cbd130fb4c2efce811981e07ee
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
LINUXDROID_PKG_PLATFORM_INDEPENDENT=true
LINUXDROID_PKG_NO_DEVELSPLIT=true

linuxdroid_step_post_make_install() {
    if [ -f "${LINUXDROID_PREFIX}/share/pkgconfig/xbitmaps.pc" ]; then
        mkdir -p "${LINUXDROID_PREFIX}/lib/pkgconfig" || exit 1
        mv -f "${LINUXDROID_PREFIX}/share/pkgconfig/xbitmaps.pc" "${LINUXDROID_PREFIX}/lib/pkgconfig/xbitmaps.pc" || exit 1
    fi
}
