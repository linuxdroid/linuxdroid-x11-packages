LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://pypi.python.org/pypi/six/
LINUXDROID_PKG_DESCRIPTION="Python 2 and 3 compatibility utilities"
LINUXDROID_PKG_VERSION=1.11.0
LINUXDROID_PKG_REVISION=3
LINUXDROID_PKG_SRCURL=https://pypi.io/packages/source/s/six/six-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9
LINUXDROID_PKG_DEPENDS="python2"
LINUXDROID_PKG_BUILD_IN_SRC=yes
LINUXDROID_PKG_PLATFORM_INDEPENDENT=yes

linuxdroid_step_make () {
    return
}

linuxdroid_step_make_install () {
    export PYTHONPATH=${LINUXDROID_PREFIX}/lib/python2.7/site-packages/
    python2.7 setup.py install --prefix="${LINUXDROID_PREFIX}" --force
}
