LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://dosbox.sourceforge.net/
LINUXDROID_PKG_DESCRIPTION="Emulator with builtin DOS for running DOS Games"
LINUXDROID_PKG_VERSION=0.74.2
LINUXDROID_PKG_REVISION=2
LINUXDROID_PKG_SRCURL=http://downloads.sourceforge.net/dosbox/dosbox-${LINUXDROID_PKG_VERSION/.2/-2}.tar.gz
LINUXDROID_PKG_SHA256=7077303595bedd7cd0bb94227fa9a6b5609e7c90a3e6523af11bc4afcb0a57cf
LINUXDROID_PKG_DEPENDS="libc++, libpng, libx11, sdl, sdl-net"

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
--disable-dynamic-x86
--disable-fpu-x86
--disable-opengl
"
