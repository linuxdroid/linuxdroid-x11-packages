LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://www.tigervnc.org/
LINUXDROID_PKG_VERSION=1.9.0
LINUXDROID_PKG_REVISION=18
LINUXDROID_PKG_DESCRIPTION="Suite of VNC servers. Based on the VNC 4 branch of TightVNC."
LINUXDROID_PKG_SRCURL=https://github.com/TigerVNC/tigervnc/archive/v${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=f15ced8500ec56356c3bf271f52e58ed83729118361c7103eab64a618441f740

LINUXDROID_PKG_DEPENDS="freetype, libandroid-support, libandroid-shmem, libbz2, libc++, libdrm, libexpat, libgnutls, libjpeg-turbo, libpixman, libpng, libuuid, libx11, libxau, libxcb, libxdamage, libxdmcp, libxext, libxxf86vm, libxfixes, libxfont2, libxshmfence, mesa, openssl, perl, xkeyboard-config, xorg-xauth, xorg-xkbcomp"
LINUXDROID_PKG_BUILD_DEPENDS="xorgproto, xorg-font-util, xorg-util-macros, xorg-server-xvfb, xtrans"
LINUXDROID_PKG_SUGGESTS="aterm, xorg-twm"

LINUXDROID_PKG_FOLDERNAME=tigervnc-${LINUXDROID_PKG_VERSION}
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="-DBUILD_VIEWER=ON -DENABLE_NLS=OFF -DENABLE_PAM=OFF -DENABLE_GNUTLS=ON"
LINUXDROID_PKG_BUILD_IN_SRC=true

linuxdroid_step_pre_configure () {
    mkdir -p ${LINUXDROID_PKG_BUILDDIR}/unix/xserver
    cd ${LINUXDROID_PKG_BUILDDIR}/unix/xserver

    cp -R ${LINUXDROID_TOPDIR}/xorg-server-xvfb/src/* ${LINUXDROID_PKG_BUILDDIR}/unix/xserver/

    patch -p1 -i ${LINUXDROID_PKG_SRCDIR}/unix/xserver120.patch

    export ACLOCAL="aclocal -I ${LINUXDROID_PREFIX}/share/aclocal"
    autoreconf -fi

    CFLAGS="${CFLAGS} -DFNDELAY=O_NDELAY -DINITARGS=void"
    CPPFLAGS="${CPPFLAGS} -I${LINUXDROID_PREFIX}/include/libdrm"
    LDFLAGS="${LDFLAGS} -llog"

    ./configure \
        --host="${LINUXDROID_HOST_PLATFORM}" \
        --prefix="${LINUXDROID_PREFIX}" \
        --disable-static \
        --disable-nls \
        --enable-debug \
        `LINUXDROID_PREFIX=${LINUXDROID_PREFIX} bash ${LINUXDROID_SCRIPTDIR}/packages/xorg-server-xvfb/build.sh xorg_server_flags`

    LDFLAGS="${LDFLAGS} -landroid-shmem"
}

linuxdroid_step_post_make_install () {
    cd ${LINUXDROID_PKG_BUILDDIR}/unix/xserver
    make -j ${LINUXDROID_MAKE_PROCESSES}

    cd ${LINUXDROID_PKG_BUILDDIR}/unix/xserver/hw/vnc
    make install

    ## use custom variant of vncserver script
    cp -f "${LINUXDROID_PKG_BUILDER_DIR}/vncserver" "${LINUXDROID_PREFIX}/bin/vncserver"
}
