#!/bin/sh
/opt/ivot/mipsel-24kec-linux-uclibc-4.9-2017.07/usr/bin/mipsel-24kec-linux-uclibc-nm --demangle	$1 > ./tmp
sed  -n '/::/p' ./tmp > ./tmp1
sed -i 's/^........ . //' ./tmp1
sed -i 's/(.*//' ./tmp1
sed  -n '/::/p' ./tmp1 > ./tmp
rm tmp1
