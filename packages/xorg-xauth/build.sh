LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X.Org authorization settings program"
LINUXDROID_PKG_VERSION=1.0.10
LINUXDROID_PKG_REVISION=7
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/app/xauth-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=5afe42ce3cdf4f60520d1658d2b17face45c74050f39af45dccdc95e73fafc4d
LINUXDROID_PKG_DEPENDS="libx11, libxau, libxext, libxmu"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
