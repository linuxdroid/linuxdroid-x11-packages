LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="Display a message or query in a window"
LINUXDROID_PKG_VERSION=1.0.5
LINUXDROID_PKG_REVISION=3
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/archive/individual/app/xmessage-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=373dfb81e7a6f06d3d22485a12fcde6e255d58c6dee1bbaeb00c7d0caa9b2029
LINUXDROID_PKG_DEPENDS="libx11, libxaw, libxt"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
