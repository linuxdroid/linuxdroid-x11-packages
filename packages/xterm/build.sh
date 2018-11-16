LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://github.com/linuxdroid/x11-packages
LINUXDROID_PKG_DESCRIPTION="A compatibility wrapper for Aterm"
LINUXDROID_PKG_VERSION=1.1
LINUXDROID_PKG_DEPENDS="aterm"
LINUXDROID_PKG_PLATFORM_INDEPENDENT=true

linuxdroid_step_make_install() {
    install \
        -Dm700 "${LINUXDROID_PKG_BUILDER_DIR}/xterm" \
        "${LINUXDROID_PREFIX}/bin/xterm"
}
