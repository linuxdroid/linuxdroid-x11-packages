LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://www.gnome.org
LINUXDROID_PKG_DESCRIPTION="Freedesktop.org Hicolor icon theme"
LINUXDROID_PKG_VERSION=3.30.0
LINUXDROID_PKG_REVISION=1
LINUXDROID_PKG_SRCURL=https://github.com/GNOME/adwaita-icon-theme/archive/${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=14b70916d763f841865c295b4d6dd0aebba6f0829a29c019348d0f775178aeba
LINUXDROID_PKG_PLATFORM_INDEPENDENT=true
LINUXDROID_PKG_DEPENDS="hicolor-icon-theme"
LINUXDROID_PKG_RM_AFTER_INSTALL="share/icons/Adwaita/icon-theme.cache"

linuxdroid_step_pre_configure() {
    autoreconf -fvi
}

linuxdroid_step_post_make_install() {
    # fix location of adwaita-icon-theme.pc
    if [ -f "${LINUXDROID_PREFIX}/share/pkgconfig/adwaita-icon-theme.pc" ]; then
        mkdir -p "${LINUXDROID_PREFIX}/lib/pkgconfig"
        mv -f "${LINUXDROID_PREFIX}/share/pkgconfig/adwaita-icon-theme.pc" "${LINUXDROID_PREFIX}/lib/pkgconfig/adwaita-icon-theme.pc"
    fi
}
