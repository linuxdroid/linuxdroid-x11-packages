LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://www.mesa3d.org
LINUXDROID_PKG_DESCRIPTION="An open-source implementation of the OpenGL specification"
## Use 17.3.x branch because 18.x.x requires 'pthread_barrier_t'.
LINUXDROID_PKG_VERSION=17.3.9
LINUXDROID_PKG_REVISION=7
LINUXDROID_PKG_SRCURL=https://mesa.freedesktop.org/archive/mesa-${LINUXDROID_PKG_VERSION}.tar.xz
LINUXDROID_PKG_SHA256=c5beb5fc05f0e0c294fefe1a393ee118cb67e27a4dca417d77c297f7d4b6e479

LINUXDROID_PKG_DEPENDS="libandroid-shmem, libexpat, libdrm, libx11, libxdamage, libxext, libxml2, libxshmfence"
LINUXDROID_PKG_BUILD_DEPENDS="xorgproto"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xorgproto"
LINUXDROID_PKG_CONFLICTS="libmesa"
LINUXDROID_PKG_REPLACES="libmesa"

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
--disable-asm
--disable-gbm
--disable-egl
--disable-gles1
--disable-gles2
--disable-dri
--disable-dri3
--enable-glx=xlib
--with-platforms=x11
--without-dri-drivers
--without-gallium-drivers
ac_cv_header_xlocale_h=no
"

linuxdroid_step_pre_configure() {
    export LIBS="-landroid-shmem -latomic"
}

linuxdroid_step_post_massage() {
    cd ${LINUXDROID_PKG_MASSAGEDIR}/${LINUXDROID_PREFIX}/lib || exit 1
    if [ ! -e "./libGL.so.1" ]; then
        ln -sf libGL.so libGL.so.1
    fi
}
