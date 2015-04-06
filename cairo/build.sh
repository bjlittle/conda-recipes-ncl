#!/bin/sh

export LDFLAGS="-L${PREFIX}/lib"
export CPPFLAGS="-I${PREFIX}/include"
./configure --prefix=${PREFIX} --disable-static --disable-gobject --enable-ft --enable-ps --enable-pdf --enable-svg --disable-gtk-doc 
make
#make check
make install

rm -rf ${PREFIX}/share
