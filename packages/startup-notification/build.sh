LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://www.freedesktop.org/
LINUXDROID_PKG_DESCRIPTION="Utility libraries for XC Binding"
LINUXDROID_PKG_VERSION=0.12
LINUXDROID_PKG_REVISION=5
LINUXDROID_PKG_SRCURL=https://www.freedesktop.org/software/startup-notification/releases/startup-notification-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=3c391f7e930c583095045cd2d10eb73a64f085c7fde9d260f2652c7cb3cfbe4a
LINUXDROID_PKG_DEPENDS="libx11, libxcb, xcb-util"
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="lf_cv_sane_realloc=yes"
