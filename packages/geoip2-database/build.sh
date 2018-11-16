LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

LINUXDROID_PKG_HOMEPAGE=https://dev.maxmind.com/geoip/geoip2/geolite2/
LINUXDROID_PKG_DESCRIPTION="GeoLite2 IP geolocation databases compiled by MaxMind"
LINUXDROID_PKG_PLATFORM_INDEPENDENT=true
LINUXDROID_PKG_BUILD_IN_SRC=true

## Version is DB modification date. Use script 'check-last-modified.sh'
## to view last modification date.
LINUXDROID_PKG_VERSION=20180911

_LINUXDROID_PKG_SRCURL=('https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz'
                    'https://geolite.maxmind.com/download/geoip/database/GeoLite2-Country.tar.gz'
                    'https://geolite.maxmind.com/download/geoip/database/GeoLite2-ASN.tar.gz')

_LINUXDROID_PKG_FILE=('GeoLite2-City.tar.gz'
                  'GeoLite2-Country.tar.gz'
                  'GeoLite2-ASN.tar.gz')

## If these checksums becomes invalid - it's time to update package.
_LINUXDROID_PKG_SHA256=('de7546a7d042112bf657499846624cabafb0f98639ab7415d0823e34c77d53fe'
                    '64e54ec6327989fa60be32638f49e139f7c1878e40f98413e0aeb5bc3550054f'
                    'e1ee0009a4fe6f840fdbc9381d44094cfe0c53efde3ff5899921c4766baf4757')

linuxdroid_step_make_install() {
    for i in {0..2}; do
        linuxdroid_download "${_LINUXDROID_PKG_SRCURL[i]}" "${_LINUXDROID_PKG_FILE[i]}" "${_LINUXDROID_PKG_SHA256[i]}"
    done

    for _db in GeoLite2-{City,Country,ASN}; do
        tar --strip-components=1 -xf $_db.tar.gz --wildcards "*/$_db.mmdb"
    done

    install -d "${LINUXDROID_PREFIX}/share/GeoIP"
    install -m644 -t "${LINUXDROID_PREFIX}/share/GeoIP" GeoLite2-{City,Country,ASN}.mmdb
}
