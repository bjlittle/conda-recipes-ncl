#!/bin/sh

export CFLAGS="-fPIC"
export CXXFLAGS="-fPIC"
mkdir ${PREFIX}/bin
mkdir ${PREFIX}/include
mkdir ${PREFIX}/lib
mkdir -p ${PREFIX}/man/man1
./configure --prefix=${PREFIX}
make
make check
make install
make install-lib
make install-headers
