LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://www.fltk.org/
LINUXDROID_PKG_DESCRIPTION="Graphical user interface toolkit for X"
LINUXDROID_PKG_VERSION=1.3.4.2
LINUXDROID_PKG_REVISION=1
LINUXDROID_PKG_SRCURL=http://fltk.org/pub/fltk/${LINUXDROID_PKG_VERSION/.2/}/fltk-${LINUXDROID_PKG_VERSION/.2/-2}-source.tar.gz
LINUXDROID_PKG_SHA256=25d349c18c99508737d48f225a2eb26a43338f9247551cab72a317fa42cda910
LINUXDROID_PKG_DEPENDS="fontconfig, glu, libc++, libjpeg-turbo, libpng, libx11, libxcursor, libxext, libxfixes, libxft, libxinerama, libxrender, mesa"
LINUXDROID_PKG_BUILD_IN_SRC=true

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
--enable-shared
--enable-threads
--enable-xinerama
--enable-xft
--enable-xfixes
--enable-xcursor
--enable-xrender
"

linuxdroid_step_pre_configure()
{
    sed -i 's/class Fl_XFont_On_Demand/class FL_EXPORT Fl_XFont_On_Demand/' FL/x.H
    sed -i 's/x-fluid.desktop/fluid.desktop/' -i fluid/Makefile
    sed -i -e 's/$(LINKFLTK)/$(LINKSHARED)/' -e 's/$(LINKFLTKIMG)/$(LINKSHARED)/' test/Makefile

    export LIBS="-L/data/data/com.linuxdroid/files/usr/lib"
}
