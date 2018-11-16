LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X.Org font utilities"
LINUXDROID_PKG_VERSION=1.3.1
LINUXDROID_PKG_REVISION=5
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/font/font-util-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=aa7ebdb0715106dd255082f2310dbaa2cd7e225957c2a77d719720c7cc92b921

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
--with-mapdir=${LINUXDROID_PREFIX}/share/fonts/util
--with-fontrootdir=${LINUXDROID_PREFIX}/share/fonts
"
