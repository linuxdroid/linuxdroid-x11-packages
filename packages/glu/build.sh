LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://cgit.freedesktop.org/mesa/glu/
LINUXDROID_PKG_DESCRIPTION="Mesa OpenGL Utility library"
LINUXDROID_PKG_VERSION=9.0.0
LINUXDROID_PKG_REVISION=1
LINUXDROID_PKG_SRCURL=ftp://ftp.freedesktop.org/pub/mesa/glu/glu-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=1f7ad0d379a722fcbd303aa5650c6d7d5544fde83196b42a73d1193568a4df12

LINUXDROID_PKG_DEPENDS="libandroid-shmem, libandroid-support, libc++, libdrm, libexpat, libx11, libxau, libxcb, libxdamage, libxdmcp, libxext, libxfixes, libxshmfence, mesa"
LINUXDROID_PKG_CONFLICTS="libglu"
LINUXDROID_PKG_REPLACES="libglu"
