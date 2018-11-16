LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_DESCRIPTION="Simple text editor"
LINUXDROID_PKG_DEPENDS="fltk, libc++"
LINUXDROID_PKG_VERSION=1.0-linuxdroid
LINUXDROID_PKG_REVISION=6

linuxdroid_step_make() {
    "${CXX}" \
        ${CPPFLAGS} \
        ${CXXFLAGS} \
        "${LINUXDROID_PKG_BUILDER_DIR}/fltk-editor.cxx" \
        -o fltk-editor \
        ${LDFLAGS} -lfltk
}

linuxdroid_step_make_install() {
    install -Dm700 fltk-editor "${LINUXDROID_PREFIX}/bin/fltk-editor"
}
