LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://www.gtk.org
LINUXDROID_PKG_DESCRIPTION="The interface definitions of accessibility infrastructure"
LINUXDROID_PKG_VERSION=2.30.0
LINUXDROID_PKG_REVISION=2
LINUXDROID_PKG_SRCURL=http://ftp.gnome.org/pub/gnome/sources/atk/2.30/atk-${LINUXDROID_PKG_VERSION}.tar.xz
LINUXDROID_PKG_SHA256=dd4d90d4217f2a0c1fee708a555596c2c19d26fef0952e1ead1938ab632c027b

LINUXDROID_PKG_DEPENDS="glib"
LINUXDROID_PKG_CONFLICTS="libatk"
LINUXDROID_PKG_REPLACES="libatk"
