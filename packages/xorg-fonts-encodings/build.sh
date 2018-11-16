LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X.org font encoding files"
LINUXDROID_PKG_VERSION=1.0.4
LINUXDROID_PKG_REVISION=2
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/font/encodings-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=ced6312988a45d23812c2ac708b4595f63fd7a49c4dcd9f66bdcd50d1057d539
LINUXDROID_PKG_PLATFORM_INDEPENDENT=true

linuxdroid_step_pre_configure() {
    ## Checking only for mkfontdir which is a part of xfonts-utils that provides
    ## tool mkfontscale used in further steps.
    if [ -z "$(command -v mkfontdir)" ]; then
        echo
        echo "Command 'mkfontdir' is not found."
        echo "Install it by running 'sudo apt install xfonts-utils'."
        echo
        exit 1
    fi
}

linuxdroid_step_post_make_install() {
    cd "${LINUXDROID_PREFIX}"/share/fonts/encodings/large
    mkfontscale -b -s -l -n -r -p "${LINUXDROID_PREFIX}"/share/fonts/encodings/large -e . .

    cd "${LINUXDROID_PREFIX}"/share/fonts/encodings/
    mkfontscale -b -s -l -n -r -p "${LINUXDROID_PREFIX}"/share/fonts/encodings -e . -e large .
}
