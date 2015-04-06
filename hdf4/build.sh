#!/bin/sh

export YACC=no
export LEX=no
export LDFLAGS="-L${PREFIX}/lib"
export CPPFLAGS="-I${PREFIX}/include"
./configure --prefix=${PREFIX} --with-zlib=${PREFIX} --with-jpeg=${PREFIX} --with-szip=${PREFIX} --disable-netcdf
make
make check
make install
