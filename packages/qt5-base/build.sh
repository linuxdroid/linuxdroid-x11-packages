LINUXDROID_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

##
## TODO:
##
## 1. Enable feature 'dnslookup' (causes 'static_assert' failure).
## 2. Enable additional libraries as subpackages.
## 3. Use fontconfig (causes failure in configure step).
##

LINUXDROID_PKG_HOMEPAGE=http://qt-project.org/
LINUXDROID_PKG_DESCRIPTION="A cross-platform application and UI framework"
LINUXDROID_PKG_VERSION=5.11.2
LINUXDROID_PKG_REVISION=8
LINUXDROID_PKG_SRCURL="http://download.qt.io/official_releases/qt/${LINUXDROID_PKG_VERSION%.*}/${LINUXDROID_PKG_VERSION}/single/qt-everywhere-src-${LINUXDROID_PKG_VERSION}.tar.xz"
LINUXDROID_PKG_SHA256=c6104b840b6caee596fa9a35bc5f57f67ed5a99d6a36497b6fe66f990a53ca81
LINUXDROID_PKG_DEPENDS="harfbuzz, libandroid-support, libandroid-shmem, libc++, libice, libicu, libjpeg-turbo, libpng, libsm, libuuid, libx11, libxcb, libxi, libxkbcommon, openssl, pcre2, ttf-dejavu, xcb-util-image, xcb-util-keysyms, xcb-util-renderutil, xcb-util-wm"
LINUXDROID_PKG_BUILD_IN_SRC=true
LINUXDROID_PKG_KEEP_STATIC_LIBRARIES=true

LINUXDROID_PKG_INCLUDE_IN_DEVPACKAGE="
bin/moc
bin/qlalr
bin/qvkgen
bin/rcc
bin/uic
bin/qmake
lib/qt/mkspecs
lib/libQt5*.prl
lib/libqt*.prl
lib/*.a
"

LINUXDROID_PKG_RM_AFTER_INSTALL="
bin/fixqt4headers.pl
bin/syncqt.pl
lib/qt/mkspecs/linuxdroid-cross
"

linuxdroid_step_pre_configure () {
    if [ "${LINUXDROID_ARCH}" = "arm" ]; then
        ## -mfpu=neon causes build failure on ARM.
        CFLAGS="${CFLAGS/-mfpu=neon/} -mfpu=vfp"
        CXXFLAGS="${CXXFLAGS/-mfpu=neon/} -mfpu=vfp"
    fi

    ## Create qmake.conf suitable for cross-compiling.
    sed \
        -e "s|@LINUXDROID_CC@|${LINUXDROID_HOST_PLATFORM}-clang|" \
        -e "s|@LINUXDROID_CXX@|${LINUXDROID_HOST_PLATFORM}-clang++|" \
        -e "s|@LINUXDROID_AR@|${LINUXDROID_HOST_PLATFORM}-ar|" \
        -e "s|@LINUXDROID_NM@|${LINUXDROID_HOST_PLATFORM}-nm|" \
        -e "s|@LINUXDROID_OBJCOPY@|${LINUXDROID_HOST_PLATFORM}-objcopy|" \
        -e "s|@LINUXDROID_PKGCONFIG@|${LINUXDROID_HOST_PLATFORM}-pkg-config|" \
        -e "s|@LINUXDROID_STRIP@|${LINUXDROID_HOST_PLATFORM}-strip|" \
        -e "s|@LINUXDROID_CFLAGS@|${CPPFLAGS} ${CFLAGS}|" \
        -e "s|@LINUXDROID_CXXFLAGS@|${CPPFLAGS} ${CXXFLAGS}|" \
        -e "s|@LINUXDROID_LDFLAGS@|${LDFLAGS}|" \
        "${LINUXDROID_PKG_BUILDER_DIR}/qmake.conf" > "${LINUXDROID_PKG_SRCDIR}/qtbase/mkspecs/linuxdroid-cross/qmake.conf"
}

linuxdroid_step_configure () {
    export PKG_CONFIG_SYSROOT_DIR="${LINUXDROID_PREFIX}"
    unset CC CXX LD CFLAGS LDFLAGS

    "${LINUXDROID_PKG_SRCDIR}"/configure -v \
        -opensource \
        -confirm-license \
        -release \
        -xplatform linuxdroid-cross \
        -optimized-qmake \
        -no-rpath \
        -no-use-gold-linker \
        -prefix "${LINUXDROID_PREFIX}" \
        -docdir "${LINUXDROID_PREFIX}/share/doc/qt" \
        -headerdir "${LINUXDROID_PREFIX}/include/qt" \
        -archdatadir "${LINUXDROID_PREFIX}/lib/qt" \
        -datadir "${LINUXDROID_PREFIX}/share/qt" \
        -sysconfdir "${LINUXDROID_PREFIX}/etc/xdg" \
        -examplesdir "${LINUXDROID_PREFIX}/share/doc/qt/examples" \
        -plugindir "$LINUXDROID_PREFIX/libexec/qt" \
        -nomake examples \
        -skip qt3d \
        -skip qtactiveqt \
        -skip qtandroidextras \
        -skip qtcanvas3d \
        -skip qtcharts \
        -skip qtconnectivity \
        -skip qtdatavis3d \
        -skip qtdoc \
        -skip qtgamepad \
        -skip qtgraphicaleffects \
        -skip qtimageformats \
        -skip qtlocation \
        -skip qtmacextras \
        -skip qtmultimedia \
        -skip qtnetworkauth \
        -skip qtpurchasing \
        -skip qtquickcontrols \
        -skip qtquickcontrols2 \
        -skip qtremoteobjects \
        -skip qtscript \
        -skip qtscxml \
        -skip qtsensors \
        -skip qtserialbus \
        -skip qtserialport \
        -skip qtspeech \
        -skip qtsvg \
        -skip qttools \
        -skip qttranslations \
        -skip qtvirtualkeyboard \
        -skip qtwayland \
        -skip qtwebchannel \
        -skip qtwebengine \
        -skip qtwebglplugin \
        -skip qtwebsockets \
        -skip qtwebview \
        -skip qtwinextras \
        -skip qtxmlpatterns \
        -no-dbus \
        -no-accessibility \
        -no-glib \
        -no-eventfd \
        -no-inotify \
        -icu \
        -system-pcre \
        -system-zlib \
        -ssl \
        -openssl-linked \
        -no-system-proxies \
        -no-cups \
        -system-harfbuzz \
        -no-opengl \
        -no-vulkan \
        -qpa xcb \
        -no-eglfs \
        -no-gbm \
        -no-kms \
        -no-linuxfb \
        -no-mirclient \
        -system-xcb \
        -no-libudev \
        -no-evdev \
        -no-libinput \
        -no-mtdev \
        -no-tslib \
        -system-xkbcommon-x11 \
        -no-xkbcommon-evdev \
        -gif \
        -ico \
        -system-libpng \
        -system-libjpeg \
        -sql-sqlite \
        -no-feature-dnslookup
}

linuxdroid_step_make() {
    make -j "${LINUXDROID_MAKE_PROCESSES}"
}

linuxdroid_step_make_install() {
    make install

    cd "${LINUXDROID_PKG_SRCDIR}/qtbase" && {
        ## Save host-compiled Qt dev tools for later
        ## use (e.g. cross-compiling Qt application).
        cp -a bin bin.host
        cd -
    }

    ## Compiling libQt5Bootstrap.a for target arch.
    cd "${LINUXDROID_PKG_SRCDIR}/qtbase/src/tools/bootstrap" && {
        make clean

        "${LINUXDROID_PKG_SRCDIR}/qtbase/bin/qmake" \
            -spec "${LINUXDROID_PKG_SRCDIR}/qtbase/mkspecs/linuxdroid-cross"

        make -j "${LINUXDROID_MAKE_PROCESSES}"
        install -Dm644 ../../../lib/libQt5Bootstrap.a "${LINUXDROID_PREFIX}/lib/libQt5Bootstrap.a"
        install -Dm644 ../../../lib/libQt5Bootstrap.prl "${LINUXDROID_PREFIX}/lib/libQt5Bootstrap.prl"
    }

    ## Compiling libQt5QmlDevTools.a for target arch.
    cd "${LINUXDROID_PKG_SRCDIR}/qtdeclarative/src/qmldevtools" && {
        make clean

        "${LINUXDROID_PKG_SRCDIR}/qtbase/bin/qmake" \
            -spec "${LINUXDROID_PKG_SRCDIR}/qtbase/mkspecs/linuxdroid-cross"

        make -j "${LINUXDROID_MAKE_PROCESSES}"
        install -Dm644 ../../lib/libQt5QmlDevTools.a "${LINUXDROID_PREFIX}/lib/libQt5QmlDevTools.a"
        install -Dm644 ../../lib/libQt5QmlDevTools.prl "${LINUXDROID_PREFIX}/lib/libQt5QmlDevTools.prl"
    }

    ## Compiling libQt5PacketProtocol.a for target arch.
    cd "${LINUXDROID_PKG_SRCDIR}/qtdeclarative/src/plugins/qmltooling/packetprotocol" && {
        make clean

        "${LINUXDROID_PKG_SRCDIR}/qtbase/bin/qmake" \
            -spec "${LINUXDROID_PKG_SRCDIR}/qtbase/mkspecs/linuxdroid-cross"

        make -j "${LINUXDROID_MAKE_PROCESSES}"
        install -Dm644 ../../../../lib/libQt5PacketProtocol.a "${LINUXDROID_PREFIX}/lib/libQt5PacketProtocol.a"
        install -Dm644 ../../../../lib/libQt5PacketProtocol.prl "${LINUXDROID_PREFIX}/lib/libQt5PacketProtocol.prl"
    }

    ## Compiling qt5-declarative utilities for target arch.
    for i in qmlcachegen qmlimportscanner qmllint qmlmin; do
        cd "${LINUXDROID_PKG_SRCDIR}/qtdeclarative/tools/${i}" && {
            make clean

            "${LINUXDROID_PKG_SRCDIR}/qtbase/bin/qmake" \
                -spec "${LINUXDROID_PKG_SRCDIR}/qtbase/mkspecs/linuxdroid-cross"

            make -j "${LINUXDROID_MAKE_PROCESSES}"
            install -Dm700 "../../bin/${i}" "${LINUXDROID_PREFIX}/bin/${i}"
        }
    done

    ## Compiling qt5-base utilities for target arch.
    for i in moc qlalr qvkgen rcc uic; do
        cd "${LINUXDROID_PKG_SRCDIR}/qtbase/src/tools/${i}" && {
            make clean

            "${LINUXDROID_PKG_SRCDIR}/qtbase/bin/qmake" \
                -spec "${LINUXDROID_PKG_SRCDIR}/qtbase/mkspecs/linuxdroid-cross"

            ## Ensure that no '-lpthread' specified in makefile.
            sed \
                -i 's@-lpthread@@g' \
                "${LINUXDROID_PKG_SRCDIR}/qtbase/src/tools/${i}/Makefile"

            ## Fix build failure on at least 'i686'.
            sed \
                -i 's@$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)@$(LINK) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS) $(LFLAGS)@g' \
                Makefile

            make -j "${LINUXDROID_MAKE_PROCESSES}"
            install -Dm700 "../../../bin/${i}" "${LINUXDROID_PREFIX}/bin/${i}"
        }
    done
    unset i

    ## Install target-prebuilt 'qmake' tool.
    cd "${LINUXDROID_PKG_SRCDIR}" && {
        tar xf "${LINUXDROID_PKG_BUILDER_DIR}/linuxdroid-prebuilt-qmake.txz"
        install \
            -Dm700 "./linuxdroid-prebuilt-qmake/bin/linuxdroid-${LINUXDROID_HOST_PLATFORM}-qmake" \
            "${LINUXDROID_PREFIX}/bin/qmake"
    }

    ## Drop QMAKE_PRL_BUILD_DIR because reference the build dir.
    find "${LINUXDROID_PREFIX}/lib" -type f -name '*.prl' \
        -exec sed -i -e '/^QMAKE_PRL_BUILD_DIR/d' "{}" \;

    ## Remove *.la files.
    find "${LINUXDROID_PREFIX}/lib" -iname \*.la -delete
}

linuxdroid_step_create_debscripts() {
    ## FIXME: Qt should be built with fontconfig somehow instead
    ## of using direct path to fonts.
    ## Currently, using post-installation script to create symlink
    ## from /system/bin/fonts to $PREFIX/lib/fonts if possible.
    cp -f "${LINUXDROID_PKG_BUILDER_DIR}/postinst" ./
}

linuxdroid_step_post_massage() {
    ## Now install host-compiled Qt dev tools so
    ## it will possible to use them later for other
    ## packages.
    for i in moc qlalr qvkgen rcc uic; do
        install \
            -Dm755 "${LINUXDROID_PKG_SRCDIR}/qtbase/bin.host/${i}" \
            "${LINUXDROID_PREFIX}/bin/${i}"
    done
    unset i

    install \
        -Dm755 "${LINUXDROID_PKG_SRCDIR}/qtbase/qmake/qmake" \
        "${LINUXDROID_PREFIX}/bin/qmake"
}
