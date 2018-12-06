#!/bin/sh
#/opt/hisi-linux/x86-arm/arm-hisiv500-linux/target/bin/arm-hisiv500-linux-nm  --demangle	$1 > ./tmp
/opt/ivot/mipsel-24kec-linux-uclibc-4.9-2017.07/usr/bin/mipsel-24kec-linux-uclibc-nm --demangle	$1 > ./tmp
sed  -n '/::/p' ./tmp > ./tmp1
sed -i 's/^........ . //' ./tmp1
sed -i 's/(.*//' ./tmp1
sed  -n '/::/p' ./tmp1 > ./tmp
rm tmp1
