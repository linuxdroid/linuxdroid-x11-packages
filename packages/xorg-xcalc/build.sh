LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="Scientific calculator for X"
LINUXDROID_PKG_VERSION=1.0.6
LINUXDROID_PKG_REVISION=3
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/archive/individual/app/xcalc-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=2f73c7160c09dc32586ea07daa408ac897c0a16eaa98cad9f9e4ee98cd9057d8
LINUXDROID_PKG_DEPENDS="libx11, libxaw, libxt, xorg-fonts-75dpi | xorg-fonts-100dpi"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
