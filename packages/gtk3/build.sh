LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://www.gtk.org/
LINUXDROID_PKG_DESCRIPTION="GObject-based multi-platform GUI toolkit"
LINUXDROID_PKG_VERSION=3.24.1
LINUXDROID_PKG_REVISION=3
LINUXDROID_PKG_SRCURL=https://github.com/GNOME/gtk/archive/${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=3dd9a8d52e6832e9294182c3a9d3b3979e9593db181101476323241ae67b4a44
LINUXDROID_PKG_BUILD_IN_SRC=true

LINUXDROID_PKG_DEPENDS="adwaita-icon-theme, atk, coreutils, desktop-file-utils, gdk-pixbuf, glib, glib-bin, gtk-update-icon-cache, libcairo-x, libepoxy, libxcomposite, libxcursor, libxdamage, libxfixes, libxi, libxinerama, libxrandr, pango-x, shared-mime-info"
LINUXDROID_PKG_BUILD_DEPENDS="xorgproto"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xorgproto, pango-x-dev"
LINUXDROID_PKG_CONFLICTS="libgtk3"
LINUXDROID_PKG_REPLACES="libgtk3"

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
--disable-introspection
--enable-xinerama
--enable-xfixes
--enable-xcomposite
--enable-xdamage
"

LINUXDROID_PKG_RM_AFTER_INSTALL="share/glib-2.0/schemas/gschemas.compiled"

linuxdroid_step_pre_configure() {
    # prevent permission denied on build scripts
    find . -type f | xargs chmod u+x

    # prevent build failure by using host's glib-compile-resources.
    cp -f /usr/bin/glib-compile-resources "${LINUXDROID_PREFIX}/bin/glib-compile-resources"
}

linuxdroid_step_post_massage() {
    # don't store updated glib-compile-resources.
    rm -f "${LINUXDROID_PKG_MASSAGEDIR}/${LINUXDROID_PREFIX}/bin/glib-compile-resources"
}

linuxdroid_step_create_debscripts() {
    for i in postinst postrm triggers; do
        sed \
            "s|@LINUXDROID_PREFIX@|${LINUXDROID_PREFIX}|g" \
            "${LINUXDROID_PKG_BUILDER_DIR}/hooks/${i}.in" > ./${i}
        chmod 755 ./${i}
    done
    unset i
    chmod 644 ./triggers
}
