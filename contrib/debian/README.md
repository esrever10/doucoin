
Debian
====================
This directory contains files used to package doucoind/doucoin-qt
for Debian-based Linux systems. If you compile doucoind/doucoin-qt yourself, there are some useful files here.

## doucoin: URI support ##


doucoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install doucoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your doucoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/doucoin128.png` to `/usr/share/pixmaps`

doucoin-qt.protocol (KDE)

