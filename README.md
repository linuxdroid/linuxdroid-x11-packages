# Linuxdroid X11 Packages
Here are located build scripts and patches for X11 packages for Linuxdroid.

To use X11-enabled programs, you need to install [VNC Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android) or [XServer XSDL](https://play.google.com/store/apps/details?id=x.org.server). If launching program from terminal, make sure that environment variable 'DISPLAY' is set to correct value, e.g. `export DISPLAY=:1` when using TigerVNC or `export DISPLAY=127.0.0.1:0` when XServer XSDL.

## How to enable this repository
To enable the [linuxdroid-x11.ml](https://linuxdroid-x11.ml) package repository run:

```
pkg install x11-repo
```

## External links

* Linuxdroid home page: https://linuxdroid.app/
* Linuxdroid Wiki: https://wiki.linuxdroid.app/wiki/Main_Page
* Linuxdroid App: https://github.com/linuxdroid/linuxdroid-app
* Linuxdroid Packages: https://github.com/linuxdroid/linuxdroid-packages
