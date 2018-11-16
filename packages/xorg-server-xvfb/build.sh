LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X virtual framebuffer"
LINUXDROID_PKG_VERSION=1.20.3
LINUXDROID_PKG_REVISION=1
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/xserver/xorg-server-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=1b3ce466c12cacbe2252b3ad5b0ed561972eef9d09e75900d65fb1e21f9201de

LINUXDROID_PKG_DEPENDS="libandroid-shmem, libdrm, libpixman, libx11, libxau, libxfont2, libxinerama, libxkbfile, libxshmfence, mesa, openssl, xkeyboard-config, xorg-xkbcomp"
LINUXDROID_PKG_CONFLICTS="xorg-xvfb"
LINUXDROID_PKG_REPLACES="xorg-xvfb"

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
--enable-composite
--enable-mitshm
--enable-xres
--enable-record
--enable-xv
--enable-xvmc
--enable-dga
--enable-screensaver
--enable-xdmcp
--disable-glx
--disable-dri
--disable-dri2
--disable-dri3
--enable-present
--enable-xinerama
--enable-xf86vidmode
--enable-xace
--enable-xcsecurity
--enable-dbe
--enable-xf86bigfont
--disable-xfree86-utils
--disable-vgahw
--disable-vbe
--disable-int10-module
--enable-libdrm
--disable-pciaccess
--disable-linux-acpi
--disable-linux-apm
--disable-xorg
--disable-dmx
--enable-xvfb
--disable-xnest
--disable-xwayland
--disable-xwin
--disable-kdrive
--disable-xephyr
--disable-libunwind
--enable-xshmfence
--enable-ipv6
--with-sha1=libcrypto
--with-fontrootdir=${LINUXDROID_PREFIX}/share/fonts
--with-xkb-path=${LINUXDROID_PREFIX}/share/X11/xkb
LIBS=-landroid-shmem"

linuxdroid_step_pre_configure () {
    CFLAGS+=" -DFNDELAY=O_NDELAY"
    CPPFLAGS+=" -I${LINUXDROID_PREFIX}/include/libdrm"

    if [ -n "${LINUXDROID_DEBUG}" ]; then
        LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS+=" --enable-debug"
    fi
}

linuxdroid_step_post_make_install () {
    rm -f "${LINUXDROID_PREFIX}/usr/share/X11/xkb/compiled"
}

## The following is required for package 'tigervnc'.
if [ "${#}" -eq 1 ] && [ "${1}" == "xorg_server_flags" ]; then
        echo ${LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS}
        return
fi
