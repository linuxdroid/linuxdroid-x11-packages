LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://github.com/Airblader/xcb-util-xrm/
LINUXDROID_PKG_DESCRIPTION="XCB utility functions for the X resource manager"
LINUXDROID_PKG_VERSION=1.3
LINUXDROID_PKG_REVISION=3
LINUXDROID_PKG_SRCURL=https://github.com/Airblader/xcb-util-xrm/releases/download/v${LINUXDROID_PKG_VERSION}/xcb-util-xrm-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=0129f74c327ae65e2f4ad4002f300b4f02c9aff78c00997f1f1c5a430f922f34
LINUXDROID_PKG_DEPENDS="libxau, libxcb, libxdmcp, xcb-util"
LINUXDROID_PKG_BUILD_DEPENDS="xorg-util-macros"
