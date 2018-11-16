LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://github.com/xeffyr/linuxdroid-extra-packages
LINUXDROID_PKG_DESCRIPTION="A workaround for shm_open() and shm_unlink() for Android"
LINUXDROID_PKG_VERSION=0.2
LINUXDROID_PKG_REVISION=2

linuxdroid_step_make() {
    cp "${LINUXDROID_PKG_BUILDER_DIR}/posix-shm.c" ./
    cp "${LINUXDROID_PKG_BUILDER_DIR}/posix-shm.h" ./
    ${CC} ${CPPFLAGS} ${CFLAGS} ${LDFLAGS} -I. -fPIC posix-shm.c -shared -o libposix-shm.so
}

linuxdroid_step_make_install() {
    mkdir -p "${LINUXDROID_PREFIX}/include"
    mkdir -p "${LINUXDROID_PREFIX}/lib"
    cp -f posix-shm.h "${LINUXDROID_PREFIX}/include/"
    cp -f libposix-shm.so "${LINUXDROID_PREFIX}/lib/"
}
