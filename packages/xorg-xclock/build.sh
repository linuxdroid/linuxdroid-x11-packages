LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X clock"
LINUXDROID_PKG_VERSION=1.0.7
LINUXDROID_PKG_REVISION=5
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/app/xclock-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=23ceeca94e3e20a6c26a703ac7f789066d4517f8d2cb717ae7cb28a617d97dd0
LINUXDROID_PKG_DEPENDS="libandroid-support, libx11, libxaw, libxft, libxkbfile, libxmu, libxrender, libxt"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
LINUXDROID_PKG_CONFLICTS="xclock"
LINUXDROID_PKG_REPLACES="xclock"
