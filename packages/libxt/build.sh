LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X11 toolkit intrinsics library"
LINUXDROID_PKG_VERSION=1.1.5
LINUXDROID_PKG_REVISION=5
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXt-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=46eeb6be780211fdd98c5109286618f6707712235fdd19df4ce1e6954f349f1a
LINUXDROID_PKG_DEPENDS="libandroid-support, libice, libsm, libuuid, libx11, libxau, libxcb, libxdmcp"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--enable-malloc0returnsnull"

linuxdroid_step_pre_configure () {
    export CFLAGS_FOR_BUILD=" "
    export LDFLAGS_FOR_BUILD=" "
}
