LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://powdertoy.co.uk/
LINUXDROID_PKG_DESCRIPTION="The Powder Toy is a free physics sandbox game"
LINUXDROID_PKG_VERSION=93.3
LINUXDROID_PKG_REVISION=5
LINUXDROID_PKG_SRCURL=https://github.com/ThePowderToy/The-Powder-Toy/archive/v${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=6c5f5914e4ae0ac8500c7203ec69517a2fd4380dece6b33247ed719aa12e074e
LINUXDROID_PKG_DEPENDS="fftw, libbz2, libc++, liblua52, sdl, libx11"
LINUXDROID_PKG_FOLDERNAME=The-Powder-Toy-${LINUXDROID_PKG_VERSION}
LINUXDROID_PKG_BUILD_IN_SRC=true

linuxdroid_step_make() {
    export CFLAGS="${CFLAGS} -I${LINUXDROID_PREFIX}/include"
    export CXXFLAGS="${CFLAGS}"
    export LDFLAGS="-L${LINUXDROID_PREFIX}/lib"
    scons -j4 --lin --64bit --no-sse --lua52
}

linuxdroid_step_make_install() {
    install -Dm755 "${LINUXDROID_PKG_SRCDIR}/build/powder64-legacy" "${LINUXDROID_PREFIX}/bin/the-powder-toy"
    ln -sfr "${LINUXDROID_PREFIX}/bin/the-powder-toy" "${LINUXDROID_PREFIX}/bin/powder"
    ${LINUXDROID_ELF_CLEANER} "${LINUXDROID_PREFIX}/bin/the-powder-toy"
}
