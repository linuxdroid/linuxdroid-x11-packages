LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://www.freedesktop.org/wiki/Software/XKeyboardConfig/
LINUXDROID_PKG_DESCRIPTION="X keyboard configuration files"
LINUXDROID_PKG_VERSION=2.25
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/archive/individual/data/xkeyboard-config/xkeyboard-config-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=fec6c25a8d3931bd9afca49a1653b0fa222c85610502d7b77699bb61262934b2
LINUXDROID_PKG_PLATFORM_INDEPENDENT=true

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
--with-xkb-rules-symlink=xorg
--with-xkb-base=${LINUXDROID_PREFIX}/share/X11/xkb
--enable-compat-rules=yes
"

linuxdroid_step_post_make_install() {
    if [ -f "${LINUXDROID_PREFIX}/share/pkgconfig/xkeyboard-config.pc" ]; then
        mkdir -p "${LINUXDROID_PREFIX}/lib/pkgconfig" || exit 1
        mv -f "${LINUXDROID_PREFIX}/share/pkgconfig/xkeyboard-config.pc" "${LINUXDROID_PREFIX}/lib/pkgconfig/xkeyboard-config.pc" || exit 1
    fi
}
