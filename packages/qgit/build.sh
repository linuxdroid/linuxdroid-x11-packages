LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://github.com/tibirna/qgit
LINUXDROID_PKG_DESCRIPTION="A git GUI viewer"
LINUXDROID_PKG_VERSION=2.8
LINUXDROID_PKG_REVISION=1
LINUXDROID_PKG_SRCURL=https://github.com/tibirna/qgit/archive/qgit-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=a6751181bde2ff9f3a097694e5c42db689633028b178595f66909d6585cad514
LINUXDROID_PKG_DEPENDS="hicolor-icon-theme, qt5-base"
LINUXDROID_PKG_BUILD_IN_SRC=true

linuxdroid_step_configure() {
    linuxdroid_setup_cmake

    cmake . \
        -DCMAKE_INSTALL_PREFIX="${LINUXDROID_PREFIX}" \
        -DQt5_DIR="${LINUXDROID_PREFIX}/lib/cmake/Qt5" \
        -DQt5Core_DIR="${LINUXDROID_PREFIX}/lib/cmake/Qt5Core"
}
