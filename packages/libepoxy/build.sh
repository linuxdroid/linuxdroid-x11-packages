LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://github.com/anholt/libepoxy
LINUXDROID_PKG_DESCRIPTION="Library handling OpenGL function pointer management"
LINUXDROID_PKG_VERSION=1.5.3
LINUXDROID_PKG_SRCURL=https://github.com/anholt/libepoxy/releases/download/${LINUXDROID_PKG_VERSION}/libepoxy-${LINUXDROID_PKG_VERSION}.tar.xz
LINUXDROID_PKG_SHA256=002958c5528321edd53440235d3c44e71b5b1e09b9177e8daf677450b6c4433d
LINUXDROID_PKG_DEPENDS="mesa"

linuxdroid_step_pre_configure () {
    export EGL_CFLAGS=${CFLAGS}
    export EGL_LIBS="-L${LINUXDROID_STANDALONE_TOOLCHAIN}/sysroot/lib -lEGL"
}
