LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://freedesktop.org/Software/shared-mime-info
LINUXDROID_PKG_DESCRIPTION="Freedesktop.org Shared MIME Info"
LINUXDROID_PKG_VERSION=1.10
LINUXDROID_PKG_SRCURL=https://freedesktop.org/~hadess/shared-mime-info-${LINUXDROID_PKG_VERSION}.tar.xz
LINUXDROID_PKG_SHA256=c625a83b4838befc8cafcd54e3619946515d9e44d63d61c4adf7f5513ddfbebf
LINUXDROID_PKG_DEPENDS="coreutils, glib, libxml2"
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--disable-update-mimedb ac_cv_func_fdatasync=no"

linuxdroid_step_post_make_install() {
    # fix location of shared-mime-info.pc
    if [ -f "${LINUXDROID_PREFIX}/share/pkgconfig/shared-mime-info.pc" ]; then
        mkdir -p "${LINUXDROID_PREFIX}/lib/pkgconfig" || exit 1
        mv -f "${LINUXDROID_PREFIX}/share/pkgconfig/shared-mime-info.pc" "${LINUXDROID_PREFIX}/lib/pkgconfig/shared-mime-info.pc" || exit 1
    fi
}

linuxdroid_step_create_debscripts()
{
    cp "${LINUXDROID_PKG_BUILDER_DIR}/postinst" ./postinst
    cp "${LINUXDROID_PKG_BUILDER_DIR}/postrm"   ./postrm
    cp "${LINUXDROID_PKG_BUILDER_DIR}/triggers" ./triggers
}
