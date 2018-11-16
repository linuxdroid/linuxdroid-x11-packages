LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="Create an index of scalable font files for X"
LINUXDROID_PKG_VERSION=1.0.7
LINUXDROID_PKG_REVISION=6
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/archive/individual/app/mkfontdir-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=56d52a482df130484e51fd066d1b6eda7c2c02ddbc91fe6e2be1b9c4e7306530
LINUXDROID_PKG_PLATFORM_INDEPENDENT=true
LINUXDROID_PKG_DEPENDS="coreutils, dash, findutils, xorg-mkfontscale"

linuxdroid_step_create_debscripts() {
    cp -f "${LINUXDROID_PKG_BUILDER_DIR}/postinst" ./
    cp -f "${LINUXDROID_PKG_BUILDER_DIR}/postrm"   ./
    cp -f "${LINUXDROID_PKG_BUILDER_DIR}/triggers" ./
}
