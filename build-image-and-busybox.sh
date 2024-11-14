#!/bin/sh

set -e
docker build -t busybox-build -f busybuilder/Containerfile busybuilder
mkdir -p output
docker run --rm -it -v $PWD/output:/output -e MAKEFLAGS busybox-build sh /build/build-busybox.sh
