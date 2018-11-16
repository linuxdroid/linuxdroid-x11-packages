LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X.org 75dpi fonts"
LINUXDROID_PKG_VERSION=1.0.3
LINUXDROID_PKG_REVISION=3
LINUXDROID_PKG_DEPENDS="fontconfig-utils, xorg-font-util, xorg-fonts-alias, xorg-fonts-encodings, xorg-mkfontdir, xorg-mkfontscale"
LINUXDROID_PKG_CONFLICTS="xorg-fonts-lite"
LINUXDROID_PKG_PLATFORM_INDEPENDENT=true
LINUXDROID_PKG_BUILD_IN_SRC=true

font_sources=("font-adobe-75dpi-1.0.3.tar.bz2"
              "font-adobe-utopia-75dpi-1.0.4.tar.bz2"
              "font-bh-75dpi-1.0.3.tar.bz2"
              "font-bh-lucidatypewriter-75dpi-1.0.3.tar.bz2"
              "font-bitstream-75dpi-1.0.3.tar.bz2")

font_sources_sha256=("c6024a1e4a1e65f413f994dd08b734efd393ce0a502eb465deb77b9a36db4d09"
                     "8732719c61f3661c8bad63804ebfd54fc7de21ab848e9a26a19b1778ef8b5c94"
                     "3486aa51ac92c646a448fe899c5c3dae0024b1fef724d5100d52640d1cac721c"
                     "4ac16afbe205480cc5572e2977ea63488c543d05be0ea8e5a94c845a6eebcb31"
                     "ba3f5e4610c07bd5859881660753ec6d75d179f26fc967aa776dbb3d5d5cf48e")

linuxdroid_step_post_extract_package() {
    local _base_url="https://xorg.freedesktop.org/releases/individual/font"

    for i in {0..4}; do
        local url="${_base_url}/${font_sources[i]}"
        local file="${LINUXDROID_PKG_CACHEDIR}/${font_sources[i]}"
        local checksum="${font_sources_sha256[i]}"

        linuxdroid_download "${url}" "${file}" "${checksum}"
        tar xf "${file}" -C "${LINUXDROID_PKG_SRCDIR}"
    done
}

linuxdroid_step_pre_configure() {
    if [ -z "$(command -v mkfontdir)" ]; then
        echo
        echo "Command 'mkfontdir' is not found."
        echo "Install it by running 'sudo apt install xfonts-utils'."
        echo
        exit 1
    fi
}

linuxdroid_step_make_install() {
    for i in {0..4}; do
        local dir="${LINUXDROID_PKG_SRCDIR}/${font_sources[i]//.tar.bz2}"

        pushd "${dir}"
        ./configure --prefix="${LINUXDROID_PREFIX}" \
                    --host="${LINUXDROID_HOST_PLATFORM}" \
                    --with-fontdir="${LINUXDROID_PREFIX}/share/fonts/75dpi"
        make -j "${LINUXDROID_MAKE_PROCESSES}"
        make install
        popd
    done
}

linuxdroid_step_post_make_install() {
    rm -f "${LINUXDROID_PREFIX}"/share/fonts/75dpi/fonts.*
}
