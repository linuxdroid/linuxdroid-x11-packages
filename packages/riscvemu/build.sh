LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

## Note: riscvemu was renamed to tinyemu.

LINUXDROID_PKG_HOMEPAGE=https://bellard.org/tinyemu/
LINUXDROID_PKG_DESCRIPTION="RISC-V system emulator"
LINUXDROID_PKG_VERSION=20180923
LINUXDROID_PKG_REVISION=1
LINUXDROID_PKG_SRCURL=https://bellard.org/tinyemu/tinyemu-2018-09-23.tar.gz
LINUXDROID_PKG_SHA256=9b58d5521df8356c3be09a520387d3e4adcb510cf8d2fd6bdd971287bd57d734
LINUXDROID_PKG_BUILD_IN_SRC=true

LINUXDROID_PKG_DEPENDS="libcurl, openssl, sdl"
LINUXDROID_PKG_CONFLICTS="riscvemu-sdl"
LINUXDROID_PKG_REPLACES="riscvemu-sdl"

linuxdroid_step_make() {
    local RISCV_128BIT_SUPPORT

    if [ "${LINUXDROID_ARCH}" = "aarch64" ] || [ "${LINUXDROID_ARCH}" = "x86_64" ]; then
        RISCV_128BIT_SUPPORT="CONFIG_INT128=y"
    else
        RISCV_128BIT_SUPPORT=""
    fi

    make \
        CROSS_PREFIX="${LINUXDROID_HOST_PLATFORM}-" \
        LINUXDROID_CFLAGS="${CPPFLAGS} ${CFLAGS}" \
        LINUXDROID_LDFLAGS="${LDFLAGS}" \
        CONFIG_SDL=y \
        ${RISCV_128BIT_SUPPORT}
}

linuxdroid_step_make_install() {
    install -Dm700 ./temu "${LINUXDROID_PREFIX}/bin/temu"
    install -Dm700 ./splitimg "${LINUXDROID_PREFIX}/bin/temu-splitimg"
    install -Dm700 ./build_filelist "${LINUXDROID_PREFIX}/bin/temu-build_filelist"

    ## Compatibility link.
    ln -sfr "${LINUXDROID_PREFIX}/bin/temu" "${LINUXDROID_PREFIX}/bin/riscvemu"

    ## Unpacking and installing samples.
    mkdir ./sample_files
    cd ./sample_files && {
        linuxdroid_download \
            https://bellard.org/tinyemu/diskimage-linux-riscv-2018-09-23.tar.gz \
            "${LINUXDROID_PKG_CACHEDIR}/samples.tar.gz" \
            808ecc1b32efdd76103172129b77b46002a616dff2270664207c291e4fde9e14

        tar xf "${LINUXDROID_PKG_CACHEDIR}/samples.tar.gz" --strip-components=1

        install -Dm600 bbl32.bin "${LINUXDROID_PREFIX}/share/riscvemu/bbl32.bin"
        install -Dm600 bbl64.bin "${LINUXDROID_PREFIX}/share/riscvemu/bbl64.bin"
        install -Dm600 kernel-riscv32.bin "${LINUXDROID_PREFIX}/share/riscvemu/kernel-riscv32.bin"
        install -Dm600 kernel-riscv64.bin "${LINUXDROID_PREFIX}/share/riscvemu/kernel-riscv64.bin"
        install -Dm600 root-riscv32.bin "${LINUXDROID_PREFIX}/share/riscvemu/root-riscv32.bin"
        install -Dm600 root-riscv64.bin  "${LINUXDROID_PREFIX}/share/riscvemu/root-riscv64.bin"
        install -Dm600 root-riscv32.cfg "${LINUXDROID_PREFIX}/share/riscvemu/root-riscv32.cfg"
        install -Dm600 root-riscv64.cfg "${LINUXDROID_PREFIX}/share/riscvemu/root-riscv64.cfg"
        install -Dm600 root_9p-riscv64.cfg "${LINUXDROID_PREFIX}/share/riscvemu/root_9p-riscv64.cfg"

        ## Use own directory for 9P.
        sed -i "s@/tmp@${LINUXDROID_ANDROID_HOME}@g" "${LINUXDROID_PREFIX}/share/riscvemu/root_9p-riscv64.cfg"

        ## Specify kernel image.
        sed -i '/bios: "bbl64.bin",/ a\    kernel: "kernel-riscv64.bin",' "${LINUXDROID_PREFIX}/share/riscvemu/root_9p-riscv64.cfg"
    }
}

linuxdroid_step_create_debscripts() {
    cp "${LINUXDROID_PKG_BUILDER_DIR}/postinst" ./
}
