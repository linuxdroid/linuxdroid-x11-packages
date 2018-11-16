LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://github.com/python-xlib/python-xlib
LINUXDROID_PKG_DESCRIPTION="A fully functional X client library for Python programs"
LINUXDROID_PKG_VERSION=0.23
LINUXDROID_PKG_REVISION=2
LINUXDROID_PKG_SRCURL=https://github.com/python-xlib/python-xlib/releases/download/${LINUXDROID_PKG_VERSION}/python-xlib-${LINUXDROID_PKG_VERSION}.tar.bz2
LINUXDROID_PKG_SHA256=c3deb8329038620d07b21be05673fa5a495dd8b04a2d9f4dca37a3811d192ae4
LINUXDROID_PKG_DEPENDS="libx11, python2, python2-six"
LINUXDROID_PKG_BUILD_IN_SRC=yes
LINUXDROID_PKG_PLATFORM_INDEPENDENT=yes

linuxdroid_step_make() {
    return
}

linuxdroid_step_make_install() {
    ## python2 setuptools needed
    export PYTHONPATH=${LINUXDROID_PREFIX}/lib/python2.7/site-packages/
    python2.7 setup.py install --root="/" --prefix="${LINUXDROID_PREFIX}" --force
}
