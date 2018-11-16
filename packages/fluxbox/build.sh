LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://www.fluxbox.org
LINUXDROID_PKG_DESCRIPTION="A lightweight and highly-configurable window manager"
LINUXDROID_PKG_VERSION=1.3.7
LINUXDROID_PKG_REVISION=7
LINUXDROID_PKG_SRCURL=https://downloads.sourceforge.net/sourceforge/fluxbox/fluxbox-${LINUXDROID_PKG_VERSION}.tar.xz
LINUXDROID_PKG_SHA256=fc8c75fe94c54ed5a5dd3fd4a752109f8949d6df67a48e5b11a261403c382ec0
LINUXDROID_PKG_DEPENDS="feh, fribidi, imlib2, libandroid-support, libc++, libxft, libxinerama, libxpm, libxrandr, xorg-xmessage"
LINUXDROID_PKG_RECOMMENDS="aterm"
LINUXDROID_PKG_BUILD_IN_SRC=true

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
--enable-imlib2
--enable-xft
--enable-xinerama
"

linuxdroid_step_pre_configure() {
    export CXXFLAGS="${CXXFLAGS} -Wno-c++11-narrowing"
}
