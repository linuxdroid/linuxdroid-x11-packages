LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://dri.freedesktop.org
LINUXDROID_PKG_DESCRIPTION="Userspace interface to kernel DRM services"
LINUXDROID_PKG_VERSION=2.4.96
LINUXDROID_PKG_SRCURL=https://dri.freedesktop.org/libdrm/libdrm-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=0d561acf7bb4cc59dc82415100e6c1a44860e8c380e00f9592923e3cd08db393

LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
--disable-intel
--disable-radeon
--disable-amdgpu
--disable-nouveau
--disable-vmwgfx
"

linuxdroid_step_pre_configure() {
    CFLAGS="${CFLAGS} -DANDROID"
}
