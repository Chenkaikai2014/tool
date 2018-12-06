#!/bin/sh
#find -regex '.*.a'
file_name='.*.a'
for file in $(find -regex $file_name)
do
	/opt/hisi-linux/x86-arm/arm-hisiv500-linux/target/bin/arm-hisiv500-linux-nm --size-sort  --demangle $file > ./cpp_size
	~/sh/nm/nmPrint ./cpp_size
	echo $file
done

