LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://www.qemu.org
LINUXDROID_PKG_DESCRIPTION="A generic and open source machine emulator (x86_64)"
LINUXDROID_PKG_VERSION=3.0.0
LINUXDROID_PKG_REVISION=1
LINUXDROID_PKG_SRCURL=https://download.qemu.org/qemu-${LINUXDROID_PKG_VERSION}.tar.xz
LINUXDROID_PKG_SHA256=8d7af64fe8bd5ea5c3bdf17131a8b858491bcce1ee3839425a6d91fb821b5713
LINUXDROID_PKG_DEPENDS="attr, glib, libandroid-shmem, libandroid-support, libbz2, libc++, libcap, libcurl, libgnutls, libjpeg-turbo, liblzo, libnettle, libpixman, libpng, libsasl, libssh2, libutil, ncurses, qemu-common, sdl2"
LINUXDROID_PKG_BUILD_IN_SRC=true

LINUXDROID_PKG_RM_AFTER_INSTALL="
bin/qemu-nbd
share/man/man8
"

linuxdroid_step_configure() {
    local ENABLED_TARGETS="aarch64-softmmu,arm-softmmu,i386-softmmu,x86_64-softmmu,aarch64-linux-user,arm-linux-user,i386-linux-user,x86_64-linux-user"

    ./configure --prefix="${LINUXDROID_PREFIX}" \
                --cross-prefix="${CC//clang}" \
                --cc="${CC}" \
                --host-cc="gcc" \
                --cxx="${CXX}" \
                --objcc="${CC}" \
                --extra-cflags="${CFLAGS}" \
                --extra-cxxflags="${CXXFLAGS}" \
                --extra-ldflags="${LDFLAGS} -landroid-shmem -llog" \
                --smbd="${LINUXDROID_PREFIX}/bin/smbd" \
                --interp-prefix="${LINUXDROID_PREFIX}/gnemul" \
                --disable-guest-agent \
                --enable-pie \
                --enable-sdl \
                --with-sdlabi="2.0" \
                --disable-gtk \
                --disable-vte \
                --enable-curses \
                --enable-vnc \
                --enable-vnc-jpeg \
                --enable-vnc-png \
                --enable-vnc-sasl \
                --disable-mpath \
                --disable-xen \
                --enable-curl \
                --enable-fdt \
                --disable-kvm \
                --disable-hax \
                --disable-spice \
                --enable-lzo \
                --enable-bzip2 \
                --disable-seccomp \
                --enable-coroutine-pool \
                --enable-virtfs \
                --enable-tpm \
                --enable-libssh2 \
                --disable-jemalloc \
                --disable-libxml2 \
                --target-list="${ENABLED_TARGETS}"
}

linuxdroid_step_post_make_install() {
    ## by default, alias 'qemu' will be a qemu-system-x86_64
    ln -sfr "${LINUXDROID_PREFIX}/bin/qemu-system-x86_64" "${LINUXDROID_PREFIX}/bin/qemu"
    sed -i 's/qemu\\-system\\-i386/qemu\\-system\\-x86_64/g' "${LINUXDROID_PREFIX}/share/man/man1/qemu.1"

    ## symlink manpages
    ln -sfr "${LINUXDROID_PREFIX}/share/man/man1/qemu.1" "${LINUXDROID_PREFIX}/share/man/man1/qemu-system-aarch64.1"
    ln -sfr "${LINUXDROID_PREFIX}/share/man/man1/qemu.1" "${LINUXDROID_PREFIX}/share/man/man1/qemu-system-arm.1"
    ln -sfr "${LINUXDROID_PREFIX}/share/man/man1/qemu.1" "${LINUXDROID_PREFIX}/share/man/man1/qemu-system-i386.1"
    ln -sfr "${LINUXDROID_PREFIX}/share/man/man1/qemu.1" "${LINUXDROID_PREFIX}/share/man/man1/qemu-system-x86_64.1"
}
