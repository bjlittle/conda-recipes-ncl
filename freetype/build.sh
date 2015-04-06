#!/bin/sh

export CC="gcc"
export LDFLAGS="-L${PREFIX}/lib"
export CPPFLAGS="-I${PREFIX}/include"
./configure --prefix=${PREFIX} --with-zlib=yes --without-bzip2 --with-png=yes --without-harfbuzz
make
make check
make install
