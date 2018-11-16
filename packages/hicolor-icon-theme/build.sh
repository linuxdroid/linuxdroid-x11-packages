LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://www.freedesktop.org/wiki/Software/icon-theme/
LINUXDROID_PKG_DESCRIPTION="Freedesktop.org Hicolor icon theme"
LINUXDROID_PKG_VERSION=0.17
LINUXDROID_PKG_REVISION=7
LINUXDROID_PKG_PLATFORM_INDEPENDENT=true

linuxdroid_step_make_install() {
    install -Dm644 "${LINUXDROID_PKG_BUILDER_DIR}/index.theme" "${LINUXDROID_PREFIX}/share/icons/hicolor/index.theme"
}
