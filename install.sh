#!/bin/bash
#S.LALLEMAND
#slallemand01@gmail.com
#Simple install script for SnapBackup

INSTALL=`which install`

DEFAULTBINDIR=/usr/local/bin
DEFAULTCONFDIR=/usr/local/etc

REPODIR=`dirname $0`

[ -h $REPODIR/bin/snap ] && rm -f $REPODIR/bin/snap
$INSTALL -m 755 $REPODIR/bin/snap $DEFAULTBINDIR

[ -r $DEFAULTCONFDIR/snap.conf ] || $INSTALL -m 644 $REPODIR/etc/snap.conf $DEFAULTCONFDIR

echo "SnapBackup now installed"
$DEFAULTBINDIR/snap -v
