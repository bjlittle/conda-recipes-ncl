#!/bin/sh

export LDFLAGS="-L${PREFIX}/lib"
export CPPFLAGS="-I${PREFIX}/include"

if [ ! -f ./configure ]
then
  autoreconf -i --force
fi

./configure --prefix=${PREFIX}
make
make check
make install
