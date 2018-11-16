LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="Display information utility for X"
LINUXDROID_PKG_VERSION=1.3.2
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/archive/individual/app/xdpyinfo-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=30238ed915619e06ceb41721e5f747d67320555cc38d459e954839c189ccaf51
LINUXDROID_PKG_DEPENDS="libx11, libxcb, libxcomposite, libxext, libxi, libxinerama, libxrender, libxtst, libxxf86dga, libxxf86vm"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
