LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://xorg.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="A library that exposes a event API on top of Linux futexes"
LINUXDROID_PKG_VERSION=1.3
LINUXDROID_PKG_REVISION=3
LINUXDROID_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libxshmfence-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=b884300d26a14961a076fbebc762a39831cb75f92bed5ccf9836345b459220c7
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--disable-futex"
