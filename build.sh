#!/usr/bin/env sh

build_depends="pkg-config fontconfig-devel libXft-devel"
build_remove="$build_depends"
depends="fontconfig libXft"


sudo xbps-install -yS $build_depends $depends

make clean
make

sudo xbps-remove -yR $build_remove
