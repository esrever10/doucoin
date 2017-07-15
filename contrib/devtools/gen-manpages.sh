#!/bin/sh

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

DOUCOIND=${DOUCOIND:-$SRCDIR/doucoind}
DOUCOINCLI=${DOUCOINCLI:-$SRCDIR/doucoin-cli}
DOUCOINTX=${DOUCOINTX:-$SRCDIR/doucoin-tx}
DOUCOINQT=${DOUCOINQT:-$SRCDIR/qt/doucoin-qt}

[ ! -x $DOUCOIND ] && echo "$DOUCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
DUCVER=($($DOUCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for doucoind if --version-string is not set,
# but has different outcomes for doucoin-qt and doucoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$DOUCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $DOUCOIND $DOUCOINCLI $DOUCOINTX $DOUCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${DUCVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${DUCVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
