LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://www.libsdl.org/projects/SDL_net/
LINUXDROID_PKG_DESCRIPTION="A small sample cross-platform networking library"
LINUXDROID_PKG_VERSION=1.2.8
LINUXDROID_PKG_REVISION=8
LINUXDROID_PKG_SRCURL=https://www.libsdl.org/projects/SDL_net/release/SDL_net-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=5f4a7a8bb884f793c278ac3f3713be41980c5eedccecff0260411347714facb4

LINUXDROID_PKG_DEPENDS="libandroid-glob, libflac, libogg, libpulseaudio, libsndfile, libvorbis, sdl"
LINUXDROID_PKG_CONFLICTS="libsdl-net"
LINUXDROID_PKG_REPLACES="libsdl-net"
