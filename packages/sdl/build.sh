LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://www.libsdl.org
LINUXDROID_PKG_DESCRIPTION="A library for portable low-level access to a video framebuffer, audio output, mouse, and keyboard"
LINUXDROID_PKG_VERSION=1.2.15
LINUXDROID_PKG_REVISION=13
LINUXDROID_PKG_SRCURL=https://www.libsdl.org/release/SDL-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=d6d316a793e5e348155f0dd93b979798933fb98aa1edebcc108829d6474aad00

## Note: we need pulseaudio daemon to get sound working, otherwise
## error like 'Couldn't open audio: No available audio device' will appear.
LINUXDROID_PKG_DEPENDS="libandroid-glob, libflac, libogg, libpulseaudio, libsndfile, libvorbis, libx11, libxext, libxrandr, libxrender, pulseaudio"
LINUXDROID_PKG_CONFLICTS="libsdl"
LINUXDROID_PKG_REPLACES="libsdl"

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
--disable-assembly
--disable-nasm
--disable-pth
--disable-video-opengl
"
