LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://pypanel.sourceforge.net/
LINUXDROID_PKG_DESCRIPTION="A lightweight panel/taskbar for X11 window managers written in python."
LINUXDROID_PKG_VERSION=2.4
LINUXDROID_PKG_REVISION=9
LINUXDROID_PKG_SRCURL=http://downloads.sourceforge.net/sourceforge/pypanel/PyPanel-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=4e612b43c61b3a8af7d57a0364f6cd89df481dc41e20728afa643e9e3546e911
LINUXDROID_PKG_DEPENDS="freetype, imlib2, libandroid-shmem, libx11, libxft, python2, python2-xlib"
LINUXDROID_PKG_BUILD_IN_SRC=yes
LINUXDROID_PKG_CONFFILES="etc/pypanelrc"

linuxdroid_step_make () {
    "${CC}" -DNDEBUG \
            -fwrapv \
            -Wall \
            -Wstrict-prototypes \
            -fno-strict-aliasing \
            -Oz \
            -fPIC \
            -DHAVE_XFT=1 \
            -DIMLIB2_FIX=1 \
            -I/data/data/com.linuxdroid/files/usr/include \
            -I/data/data/com.linuxdroid/files/usr/include/freetype2 \
            -I/data/data/com.linuxdroid/files/usr/include/libpng16 \
            -c ppmodule.c \
            -o ppmodule.o \

    "${CC}" -shared \
            ppmodule.o \
            -L/data/data/com.linuxdroid/files/usr/lib \
            -lfreetype \
            -lXft \
            -lImlib2 \
            -lpython2.7 \
            -lX11 \
            -landroid-shmem \
            -o ppmodule.so
}

linuxdroid_step_make_install () {
    mkdir -p "${LINUXDROID_PREFIX}/bin"
    cp -f pypanel "${LINUXDROID_PREFIX}/bin/pypanel"
    chmod 755 "${LINUXDROID_PREFIX}/bin/pypanel"

    mkdir -p "${LINUXDROID_PREFIX}/etc"
    cp -f pypanelrc "${LINUXDROID_PREFIX}/etc/pypanelrc"
    chmod 644 "${LINUXDROID_PREFIX}/etc/pypanelrc"

    mkdir -p "${LINUXDROID_PREFIX}/lib/python2.7/site-packages"
    cp ppmodule.so "${LINUXDROID_PREFIX}/lib/python2.7/site-packages/ppmodule.so"
    chmod 644 "${LINUXDROID_PREFIX}/lib/python2.7/site-packages/ppmodule.so"

    mkdir -p "${LINUXDROID_PREFIX}/lib/python2.7/site-packages/pypanel"
    cp -f COPYING README pypanelrc ppicon.png "${LINUXDROID_PREFIX}/lib/python2.7/site-packages/pypanel/"
    chmod 644 ${LINUXDROID_PREFIX}/lib/python2.7/site-packages/pypanel/*
}
