LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://www.wireshark.org/
LINUXDROID_PKG_DESCRIPTION="Network protocol analyzer"
LINUXDROID_PKG_VERSION=2.6.4
LINUXDROID_PKG_REVISION=1
LINUXDROID_PKG_SRCURL=https://www.wireshark.org/download/src/wireshark-${LINUXDROID_PKG_VERSION}.tar.xz
LINUXDROID_PKG_SHA256=a06b007e6343f148b8b93443b2fcfc9bb3204311cd268565d54d1b71660bc861

LINUXDROID_PKG_DEPENDS="atk, c-ares, desktop-file-utils, gdk-pixbuf, glib, gtk3, hicolor-icon-theme, krb5, libandroid-shmem, libcairo-x, libgcrypt, libgnutls, libgpg-error, liblua52, liblz4, libmaxminddb, libnghttp2, libnl, libpcap, libssh, libxml2, pango-x"
LINUXDROID_PKG_CONFLICTS="tshark, wireshark, wireshark-cli"
LINUXDROID_PKG_PROVIDES="tshark, wireshark, wireshark-cli"
LINUXDROID_PKG_REPLACES="tshark, wireshark, wireshark-cli"

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--with-gtk=3 --with-qt=no"
LINUXDROID_PKG_BUILD_IN_SRC=true

linuxdroid_step_pre_configure() {
    export CFLAGS=$(echo $CFLAGS | sed 's@-Oz@-Os@g')
    export LIBS=" -landroid-shmem"
}

linuxdroid_step_post_configure() {
    ## prebuild libwsutil & libwscodecs for target (needed for plugins/codecs/l16_mono)
    cd ./wsutil && {
        make
        cd -
    }
    cd ./codecs && {
        make
        cd -
    }
}
