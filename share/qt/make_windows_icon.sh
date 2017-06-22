#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/doucoin.png
ICON_DST=../../src/qt/res/icons/doucoin.ico
convert ${ICON_SRC} -resize 16x16 doucoin-16.png
convert ${ICON_SRC} -resize 32x32 doucoin-32.png
convert ${ICON_SRC} -resize 48x48 doucoin-48.png
convert doucoin-16.png doucoin-32.png doucoin-48.png ${ICON_DST}

