LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://www.libsdl.org/projects/SDL_ttf
LINUXDROID_PKG_DESCRIPTION="A library that allows you to use TrueType fonts in your SDL applications (version 2)"
LINUXDROID_PKG_VERSION=2.0.14
LINUXDROID_PKG_SRCURL=https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=34db5e20bcf64e7071fe9ae25acaa7d72bdc4f11ab3ce59acc768ab62fe39276
LINUXDROID_PKG_DEPENDS="freetype, libandroid-support, sdl2"

linuxdroid_step_pre_configure() {
    touch NEWS README AUTHORS ChangeLog
    autoreconf -vi
}
