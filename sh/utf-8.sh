#########################################################################
# File Name: file.sh
# Author: ZhiNuo IPC Group
# mail: 
# Created Time: Fri 17 Oct 2014 02:29:36 PM CST
#########################################################################
#!/bin/sh
#enca -L zh_CN -x utf-8 *
$i
for file in $(find . -type d)
do
	if [[ $file =~ "svn" ]] ;then
		i=1
	else
		#echo $file
		enca -L zh_CN -x utf-8 $file/*
	fi
done
