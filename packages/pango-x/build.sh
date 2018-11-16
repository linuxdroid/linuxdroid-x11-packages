LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://www.pango.org/
LINUXDROID_PKG_DESCRIPTION="Library for laying out and rendering text (with X)"
LINUXDROID_PKG_VERSION=1.42.4
LINUXDROID_PKG_SRCURL=https://ftp.gnome.org/pub/GNOME/sources/pango/${LINUXDROID_PKG_VERSION:0:4}/pango-${LINUXDROID_PKG_VERSION}.tar.xz
LINUXDROID_PKG_SHA256=1d2b74cd63e8bd41961f2f8d952355aa0f9be6002b52c8aa7699d9f5da597c9d

LINUXDROID_PKG_DEPENDS="fontconfig, fribidi, glib, harfbuzz, libcairo-x, libxft"
LINUXDROID_PKG_DEVPACKAGE_DEPENDS="fontconfig-dev, harfbuzz-dev, libcairo-x-dev, libpixman-dev"

LINUXDROID_PKG_PROVIDES="pango"
LINUXDROID_PKG_REPLACES="${LINUXDROID_PKG_PROVIDES}"
LINUXDROID_PKG_CONFLICTS="${LINUXDROID_PKG_PROVIDES}, pango-dev"
