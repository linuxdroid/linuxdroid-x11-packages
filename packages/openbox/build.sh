LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://openbox.org
LINUXDROID_PKG_DESCRIPTION="Highly configurable and lightweight X11 window manager"
LINUXDROID_PKG_VERSION=3.6.1
LINUXDROID_PKG_REVISION=17
LINUXDROID_PKG_SRCURL=http://openbox.org/dist/openbox/openbox-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=8b4ac0760018c77c0044fab06a4f0c510ba87eae934d9983b10878483bde7ef7
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--disable-session-management"
LINUXDROID_PKG_DEPENDS="bash, fontconfig, freetype, fribidi, gdk-pixbuf, glib, harfbuzz, imlib2, libandroid-shmem, libandroid-support, libbz2, libcairo-x, libcroco, libffi, libgraphite, libice, liblzma, libpixman, libpng, librsvg, libsm, libuuid, libx11, libxau, libxcb, libxcursor, libxdmcp, libxext, libxfixes, libxft, libxinerama, libxml2, libxrandr, libxrender, pango-x, pcre, startup-notification, xcb-util"

# Configuration utility.
LINUXDROID_PKG_RECOMMENDS="obconf"

# For default menu entries.
LINUXDROID_PKG_SUGGESTS="aterm, fltk, fltk-editor, geany, the-powder-toy, dosbox"

LINUXDROID_PKG_RM_AFTER_INSTALL="
bin/gdm-control
bin/gnome-panel-control
bin/openbox-gnome-session
bin/openbox-kde-session
share/man/man1/openbox-gnome-session.1
share/man/man1/openbox-kde-session.1
share/gnome-session
share/gnome
share/xsessions/openbox-gnome.desktop
share/xsessions/openbox-kde.desktop
"

LINUXDROID_PKG_CONFFILES="
etc/xdg/openbox/autostart
etc/xdg/openbox/environment
etc/xdg/openbox/menu.xml
etc/xdg/openbox/rc.xml
"

linuxdroid_step_post_make_install()
{
    ## install custom variant of scripts startup scripts
    cp -f "${LINUXDROID_PKG_BUILDER_DIR}/scripts/openbox-session" "${LINUXDROID_PREFIX}/bin/openbox-session"
    chmod 755 "${LINUXDROID_PREFIX}/bin/openbox-session"

    cp -f "${LINUXDROID_PKG_BUILDER_DIR}/scripts/openbox-autostart" "${LINUXDROID_PREFIX}/libexec/openbox-autostart"
    chmod 755 "${LINUXDROID_PREFIX}/libexec/openbox-autostart"

    cp -f "${LINUXDROID_PKG_BUILDER_DIR}/scripts/openbox-xdg-autostart" "${LINUXDROID_PREFIX}/libexec/openbox-xdg-autostart"
    chmod 755 "${LINUXDROID_PREFIX}/libexec/openbox-xdg-autostart"

    ## install custom config files
    cp -f "${LINUXDROID_PKG_BUILDER_DIR}/configs/autostart" "${LINUXDROID_PREFIX}/etc/xdg/openbox/autostart"
    chmod 755 "${LINUXDROID_PREFIX}/etc/xdg/openbox/autostart"

    cp -f "${LINUXDROID_PKG_BUILDER_DIR}/configs/environment" "${LINUXDROID_PREFIX}/etc/xdg/openbox/environment"
    chmod 755 "${LINUXDROID_PREFIX}/etc/xdg/openbox/environment"

    cp -f "${LINUXDROID_PKG_BUILDER_DIR}/configs/menu.xml" "${LINUXDROID_PREFIX}/etc/xdg/openbox/menu.xml"
    chmod 644 "${LINUXDROID_PREFIX}/etc/xdg/openbox/menu.xml"

    cp -f "${LINUXDROID_PKG_BUILDER_DIR}/configs/rc.xml" "${LINUXDROID_PREFIX}/etc/xdg/openbox/rc.xml"
    chmod 644 "${LINUXDROID_PREFIX}/etc/xdg/openbox/rc.xml"

    ## install theme 'Onyx-Black'
    cp -a "${LINUXDROID_PKG_BUILDER_DIR}/Theme-Onyx-Black" "${LINUXDROID_PREFIX}/share/themes/Onyx-black"
    find "${LINUXDROID_PREFIX}/share/themes/Onyx-black" -type d | xargs chmod 755
    find "${LINUXDROID_PREFIX}/share/themes/Onyx-black" -type f | xargs chmod 644
}
