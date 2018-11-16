LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://lloyd.github.com/yajl/
LINUXDROID_PKG_DESCRIPTION="Yet Another JSON Library"
LINUXDROID_PKG_VERSION=2.1.0
LINUXDROID_PKG_REVISION=2
LINUXDROID_PKG_SRCURL=https://github.com/lloyd/yajl/archive/${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=3fb73364a5a30efe615046d07e6db9d09fd2b41c763c5f7d3bfb121cd5c5ac5a

linuxdroid_step_pre_configure() {
    linuxdroid_setup_cmake
    rm -f ./configure
}

linuxdroid_step_post_make_install() {
    # fix location of yajl.pc
    if [ -f "${LINUXDROID_PREFIX}/share/pkgconfig/yajl.pc" ]; then
        mkdir -p "${LINUXDROID_PREFIX}/lib/pkgconfig" || exit 1
        mv -f "${LINUXDROID_PREFIX}/share/pkgconfig/yajl.pc" "${LINUXDROID_PREFIX}/lib/pkgconfig/yajl.pc" || exit 1
    fi
}
