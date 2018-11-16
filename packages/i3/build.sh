LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://i3wm.org/
LINUXDROID_PKG_DESCRIPTION="An improved dynamic tiling window manager"
LINUXDROID_PKG_VERSION=4.16
LINUXDROID_PKG_SRCURL=https://i3wm.org/downloads/i3-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=cc60a5f518c5e37b4143b644a840bb2ad2a63ea7a771954c332cd5637db655b4
LINUXDROID_PKG_DEPENDS="glib, i3status, libandroid-glob, libandroid-shmem, libcairo-x, libev, libposix-shm, libxcb, libxkbcommon, pango-x, pcre, perl, startup-notification, xcb-util, xcb-util-cursor, xcb-util-keysyms, xcb-util-wm, xcb-util-xrm, yajl"

LINUXDROID_PKG_CONFFILES="
i3/config
i3/config.keycodes
"

linuxdroid_step_pre_configure() {
    export LIBS="-lposix-shm -landroid-glob -landroid-shmem"
}
