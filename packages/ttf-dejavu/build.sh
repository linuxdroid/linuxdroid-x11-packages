LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://dejavu-fonts.github.io/
LINUXDROID_PKG_DESCRIPTION="Font family based on the Bitstream Vera Fonts with a wider range of characters"
LINUXDROID_PKG_VERSION=2.37
LINUXDROID_PKG_REVISION=1
LINUXDROID_PKG_SRCURL=https://downloads.sourceforge.net/project/dejavu/dejavu/${LINUXDROID_PKG_VERSION}/dejavu-fonts-ttf-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=fa9ca4d13871dd122f61258a80d01751d603b4d3ee14095d65453b4e846e17d7
LINUXDROID_PKG_PLATFORM_INDEPENDENT=true
LINUXDROID_PKG_BUILD_IN_SRC=true

LINUXDROID_PKG_CONFFILES="
etc/fonts/conf.d/20-unhint-small-dejavu-sans-mono.conf
etc/fonts/conf.d/20-unhint-small-dejavu-sans.conf
etc/fonts/conf.d/20-unhint-small-dejavu-serif.conf
etc/fonts/conf.d/57-dejavu-sans-mono.conf
etc/fonts/conf.d/57-dejavu-sans.conf
etc/fonts/conf.d/57-dejavu-serif.conf
"

linuxdroid_step_make_install() {
    ## Install fonts.
    mkdir -p "${LINUXDROID_PREFIX}/share/fonts/TTF"
    cp -f ttf/*.ttf "${LINUXDROID_PREFIX}/share/fonts/TTF/"

    ## Install config files used by 'fontconfig' package.
    mkdir -p "${LINUXDROID_PREFIX}/etc/fonts/conf.d"
    cp -f fontconfig/*.conf "${LINUXDROID_PREFIX}/etc/fonts/conf.d/"
}
