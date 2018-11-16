LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://www.lua.org
LINUXDROID_PKG_DESCRIPTION="Shared library for the Lua interpreter (v5.2.x)"
LINUXDROID_PKG_VERSION=5.2.4
LINUXDROID_PKG_REVISION=2
LINUXDROID_PKG_SRCURL=http://www.lua.org/ftp/lua-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=b9e2e4aad6789b3b63a056d442f7b39f0ecfca3ae0f1fc0ae4e9614401b69f4b
LINUXDROID_PKG_BUILD_DEPENDS="readline"
LINUXDROID_PKG_BUILD_IN_SRC=yes

linuxdroid_step_configure() {
    sed "s/%VER%/${LINUXDROID_PKG_VERSION%.*}/g;s/%REL%/${LINUXDROID_PKG_VERSION}/g" ${LINUXDROID_PKG_BUILDER_DIR}/lua.pc > lua.pc
}

linuxdroid_step_make() {
    make -j ${LINUXDROID_MAKE_PROCESSES} \
            MYCFLAGS="${CFLAGS} -fPIC" \
            MYLDFLAGS="${LDFLAGS}" \
            CC="${CC}" \
            CXX="${CXX}" \
            linux
}

linuxdroid_step_make_install() {
    make \
        TO_BIN='lua5.2 luac5.2' \
        TO_LIB="liblua5.2.so liblua5.2.so.5.2 liblua5.2.so.${LINUXDROID_PKG_VERSION}" \
        INSTALL_DATA='cp -d' \
        INSTALL_TOP="${LINUXDROID_PREFIX}" \
        INSTALL_INC="${LINUXDROID_PREFIX}/include/lua5.2" \
        INSTALL_MAN="${LINUXDROID_PREFIX}/share/man/man1" \
        install
    install -Dm644 lua.pc "${LINUXDROID_PREFIX}/lib/pkgconfig/lua52.pc"

    mv -f "${LINUXDROID_PREFIX}/share/man/man1/lua.1" "${LINUXDROID_PREFIX}/share/man/man1/lua5.2.1"
    mv -f "${LINUXDROID_PREFIX}/share/man/man1/luac.1" "${LINUXDROID_PREFIX}/share/man/man1/luac5.2.1"
}
