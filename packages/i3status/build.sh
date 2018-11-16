LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://i3wm.org/i3status/
LINUXDROID_PKG_DESCRIPTION="Generates status bar to use with i3bar"
LINUXDROID_PKG_VERSION=2.12
LINUXDROID_PKG_REVISION=3
LINUXDROID_PKG_SRCURL=https://i3wm.org/i3status/i3status-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=6fc6881536043391ab4bed369d956f99d1088965d8bcebed18d1932de3ba791a
LINUXDROID_PKG_DEPENDS="libandroid-glob, libconfuse, libnl, libpulseaudio, yajl"
LINUXDROID_PKG_BUILD_IN_SRC=true
LINUXDROID_PKG_CONFFILES="etc/i3status.conf"

linuxdroid_step_pre_configure() {
    ## Not working on Android
    rm -f src/print_battery_info.c

    ## No ALSA available in Linuxdroid
    rm -f src/print_volume.c

    ## 1. getloadavg() is not available on Android
    ## 2. /proc/loadavg is not accessible on Android 8.0 (Oreo)
    rm -f src/print_load.c
}
