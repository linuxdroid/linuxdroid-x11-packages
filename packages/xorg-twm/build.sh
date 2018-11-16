LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="Tab Window Manager for the X Window System"
LINUXDROID_PKG_VERSION=1.0.10
LINUXDROID_PKG_REVISION=5
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/app/twm-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=6449eadca16ce0f0d900605b0cc020b95f40619261b7beccfb46bcc1836445d7
LINUXDROID_PKG_DEPENDS="libice, libsm, libx11, libxext, libxmu, libxt"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
