LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://cairographics.org
LINUXDROID_PKG_DESCRIPTION="Cairo 2D vector graphics library (with X)"
LINUXDROID_PKG_VERSION=1.14.12
LINUXDROID_PKG_REVISION=5
LINUXDROID_PKG_SHA256=8c90f00c500b2299c0a323dd9beead2a00353752b2092ead558139bd67f7bf16
LINUXDROID_PKG_SRCURL=https://cairographics.org/releases/cairo-${LINUXDROID_PKG_VERSION}.tar.xz

LINUXDROID_PKG_DEPENDS="fontconfig, freetype, glib, libandroid-shmem, libandroid-support, liblzo, libpixman, libpng, librsvg, libx11, libxcb, libxext, libxrender, poppler"
LINUXDROID_PKG_PROVIDES="libcairo, libcairo-gobject"
LINUXDROID_PKG_REPLACES="${LINUXDROID_PKG_PROVIDES}"
LINUXDROID_PKG_CONFLICTS="${LINUXDROID_PKG_PROVIDES}, libcairo-dev"

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
--disable-gtk-doc-html
--disable-gl
--enable-gobject
--enable-pdf
--enable-svg
--enable-ps
LIBS=-landroid-shmem
"

LINUXDROID_PKG_RM_AFTER_INSTALL="share/gtk-doc/html"
