LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://www.freedesktop.org/wiki/Software/desktop-file-utils
LINUXDROID_PKG_DESCRIPTION="Command line utilities for working with desktop entries"
LINUXDROID_PKG_VERSION=0.23
LINUXDROID_PKG_REVISION=10
LINUXDROID_PKG_SRCURL=https://www.freedesktop.org/software/desktop-file-utils/releases/desktop-file-utils-${LINUXDROID_PKG_VERSION}.tar.xz
LINUXDROID_PKG_SHA256=6c094031bdec46c9f621708f919084e1cb5294e2c5b1e4c883b3e70cb8903385
LINUXDROID_PKG_DEPENDS="glib"

linuxdroid_step_create_debscripts() {
    for i in postinst postrm triggers; do
        sed \
            "s|@LINUXDROID_PREFIX@|${LINUXDROID_PREFIX}|g" \
            "${LINUXDROID_PKG_BUILDER_DIR}/hooks/${i}.in" > ./${i}
        chmod 755 ./${i}
    done
    unset i
    chmod 644 ./triggers
}
