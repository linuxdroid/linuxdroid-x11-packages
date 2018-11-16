LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://www.gtk.org/
LINUXDROID_PKG_DESCRIPTION="GObject-based multi-platform GUI toolkit (legacy)"
LINUXDROID_PKG_VERSION=2.24.32
LINUXDROID_PKG_REVISION=7
LINUXDROID_PKG_SRCURL=https://github.com/GNOME/gtk/archive/${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=961678c64ad986029befd7bdd8ed3e3849e2c5e54d24affbc7d49758245c87fa
LINUXDROID_PKG_BUILD_IN_SRC=true

LINUXDROID_PKG_DEPENDS="adwaita-icon-theme, atk, coreutils, desktop-file-utils, glib-bin, gtk-update-icon-cache, libcairo-x, librsvg, libxcomposite, libxcursor, libxdamage, libxi, libxinerama, libxrandr, pango-x, shared-mime-info"
LINUXDROID_PKG_CONFLICTS="libgtk2"
LINUXDROID_PKG_REPLACES="libgtk2"

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
--enable-shm
--enable-xkb
--enable-xinerama
--disable-glibtest
--disable-cups
--disable-papi
--enable-introspection=no
"

## 1. gtk-update-icon-cache is subpackage of 'gtk3'
## 2. locales are not supported by Linuxdroid and wasting space
LINUXDROID_PKG_RM_AFTER_INSTALL="
bin/gtk-update-icon-cache
lib/locale
"

linuxdroid_step_pre_configure() {
    NOCONFIGURE=1 ./autogen.sh
    export LIBS="-landroid-shmem"
    export LDFLAGS="${LDFLAGS} -landroid-shmem"
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
