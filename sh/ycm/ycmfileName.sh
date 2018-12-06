#########################################################################
# File Name: file.sh
# Author: ZhiNuo IPC Group
# mail: 
# Created Time: Fri 17 Oct 2014 02:29:36 PM CST
#########################################################################
#!/bin/sh
nouse=true
for file in $(find ../ -iname '*include*')
do
	if [[ $file =~ "svn" ]];then
		nouse=true
	elif [[ $file =~ "Build" ]];then
		nouse=true
	elif [[ $file =~ ".h" ]];then
		nouse=true
	else
		echo "'-I',"
		echo "'"$file"',"
	fi
done

