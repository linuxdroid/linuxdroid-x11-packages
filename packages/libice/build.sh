LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 Inter-Client Exchange library"
LINUXDROID_PKG_VERSION=1.0.9
LINUXDROID_PKG_REVISION=3
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libICE-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=8f7032f2c1c64352b5423f6b48a8ebdc339cc63064af34d66a6c9aa79759e202
LINUXDROID_PKG_BUILD_DEPENDS="xorgproto, xorg-util-macros, xtrans"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="xorgproto, xtrans"
