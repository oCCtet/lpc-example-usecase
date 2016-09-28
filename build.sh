#!/bin/sh
#
# Download the 'gosu' utility, putting it into the
# Docker build context, then build all the images.

set -e

GOSU_RELEASE="1.9"
TARGET_ARCH="$(dpkg --print-architecture | awk -F- '{ print $NF }')"

rm -f debian/gosu centos/gosu
curl -o debian/gosu -sSL "https://github.com/tianon/gosu/releases/download/$GOSU_RELEASE/gosu-$TARGET_ARCH"
chmod +x debian/gosu
cp debian/gosu centos/

docker build --pull -t occtet/lpc-streaming-usecase debian
docker build --pull -t occtet/lpc-streaming-usecase-min centos
