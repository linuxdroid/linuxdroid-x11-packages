LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://hexchat.github.io/
LINUXDROID_PKG_DESCRIPTION="A popular and easy to use graphical IRC (chat) client"
LINUXDROID_PKG_VERSION=2.14.2
LINUXDROID_PKG_SRCURL=https://github.com/hexchat/hexchat/archive/v2.14.2.tar.gz
LINUXDROID_PKG_SHA256=4f2c2137020913513ea559f788c41039ca6230764d8158862d5d1ee8785592d9
LINUXDROID_PKG_DEPENDS="gdk-pixbuf, glib, gtk2, liblua, libnotify, libx11, openssl, pango-x, python"

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
-Dwith-libproxy=false
-Dwith-libcanberra=false
-Dwith-dbus=false
-Dwith-lua=lua
-Dwith-text=true
-Dwith-perl=false
-Dwith-sysinfo=false
"

LINUXDROID_PKG_RM_AFTER_INSTALL="share/locale"

linuxdroid_step_post_make_install() {
    ## TODO: patch it to force link with libandroid-shmem instead of
    ## using wrapper.
    mkdir -p "${LINUXDROID_PREFIX}/libexec/"
    mv "${LINUXDROID_PREFIX}/bin/hexchat" "${LINUXDROID_PREFIX}/libexec/"
    sed "s|@LINUXDROID_PREFIX@|${LINUXDROID_PREFIX}|g" \
        "${LINUXDROID_PKG_BUILDER_DIR}/hexchat.in" > "${LINUXDROID_PREFIX}/bin/hexchat"
    chmod 700 "${LINUXDROID_PREFIX}/bin/hexchat"
}
