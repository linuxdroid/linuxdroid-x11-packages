LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=http://dev.maxmind.com/geoip/geoip2/downloadable/
LINUXDROID_PKG_DESCRIPTION="MaxMind GeoIP2 database - library and utilities"
LINUXDROID_PKG_VERSION=1.3.2
LINUXDROID_PKG_REVISION=2
LINUXDROID_PKG_SRCURL=https://github.com/maxmind/libmaxminddb/archive/${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_SHA256=c0785521c7e5515f1169db90ed6e51bc2a5a000377d0fbad87e4d5a791a6e364
LINUXDROID_PKG_RECOMMENDS="geoip2-database"
LINUXDROID_PKG_BUILD_IN_SRC=true
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--disable-tests"

linuxdroid_step_pre_configure() {
    ./bootstrap
}
