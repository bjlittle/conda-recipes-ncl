#!/bin/sh

export LDFLAGS="-L${PREFIX}/lib"
export CPPFLAGS="-I${PREFIX}/include"
./configure --prefix=${PREFIX} --with-zlib=${PREFIX} --with-szlib=${PREFIX}
make
#make check
make install
