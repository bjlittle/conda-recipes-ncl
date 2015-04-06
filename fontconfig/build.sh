#!/bin/sh

export LDFLAGS="-L${PREFIX}/lib"
export CPPFLAGS="-I${PREFIX}/include"
./configure --prefix=${PREFIX}  --enable-libxml2 --disable-docs
make
make check
make install

rm -rf ${PREFIX}/var/cache/fontconfig/*
