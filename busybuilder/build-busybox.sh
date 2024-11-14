#!/bin/sh

set -e

cd /build
. "$HOME/.x-cmd.root/X"
x proxy set
x curl -LO https://busybox.net/downloads/busybox-1.36.1.tar.bz2
tar xvf busybox-1.36.1.tar.bz2
cd busybox-1.36.1
cp /build/busybox-config .config
make oldconfig
make $MAKEFLAGS
mkdir -p /output
cp busybox /output
