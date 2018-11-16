LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://github.com/ib/xarchiver
LINUXDROID_PKG_DESCRIPTION="GTK+ frontend to various command line archivers"
LINUXDROID_PKG_VERSION=0.5.4.13
LINUXDROID_PKG_REVISION=5
LINUXDROID_PKG_SRCURL=https://github.com/ib/xarchiver/archive/${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=617154435731554b793ab00cc373d957c066dc29444c6189029299a89430776c
LINUXDROID_PKG_DEPENDS="binutils, bzip2, cpio, gtk3, gzip, lzip, lzop, p7zip, tar, unrar, unzip, xz-utils, zip, zstd"
LINUXDROID_PKG_RM_AFTER_INSTALL="share/icons/hicolor/icon-theme.cache"
