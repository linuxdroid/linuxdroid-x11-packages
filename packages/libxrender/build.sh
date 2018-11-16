LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="X Rendering Extension client library"
LINUXDROID_PKG_VERSION=0.9.10
LINUXDROID_PKG_REVISION=5
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXrender-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=c06d5979f86e64cabbde57c223938db0b939dff49fdb5a793a1d3d0396650949
LINUXDROID_PKG_DEPENDS="libx11"
LINUXDROID_PKG_BUILD_DEPENDS="xorgproto"
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--enable-malloc0returnsnull"
