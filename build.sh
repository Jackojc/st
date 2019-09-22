#!/usr/bin/env sh

build_depends="pkg-config fontconfig-devel libXft-devel"
build_remove="$build_depends"
depends="fontconfig libXft"

export CFLAGS="$CFLAGS -march=native -m64 -Ofast -finline-limit=200 -fipa-pta -fsplit-loops -funswitch-loops"

sudo xbps-install -yS $build_depends $depends

make clean
make

sudo xbps-remove -yR $build_remove
