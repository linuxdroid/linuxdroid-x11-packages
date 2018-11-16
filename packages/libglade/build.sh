LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://www.gnome.org
LINUXDROID_PKG_DESCRIPTION="Allows you to load glade interface files in a program at runtime"
LINUXDROID_PKG_VERSION=2.6.4
LINUXDROID_PKG_SRCURL=https://download.gnome.org/sources/libglade/2.6/libglade-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=64361e7647839d36ed8336d992fd210d3e8139882269bed47dc4674980165dec
LINUXDROID_PKG_DEPENDS="atk, fontconfig, freetype, gdk-pixbuf, glib, gtk2, libcairo-x, libxml2, pango-x"
LINUXDROID_PKG_RM_AFTER_INSTALL="share/gtk-doc"

# For libglade-convert.
LINUXDROID_PKG_SUGGESTS="python2"

linuxdroid_step_post_make_install() {
    sed \
        -i "s|#!/usr/bin/python|#!${LINUXDROID_PREFIX}/bin/python2|g" \
        "${LINUXDROID_PREFIX}/bin/libglade-convert"
}
