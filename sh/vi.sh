#!/bin/sh
# Useage: ./vi.sh [all|src|intell]
#			all : all file include CMakeLists.txt
#			src : include Src
#			intell : include IntelliSrc
# generate tag file for lookupfile plugin

if [ $# == 0 ];then
	file='../\(.*CMakeList.txt\|\(Include\|Src\).*.\(cpp\|hpp\|c\|h\|CMakeLists.txt\)\)'
elif [ $1 == "all" ];then
	file='../\(.*CMakeLists.txt\|.*.\(cpp\|hpp\|c\|h\)\)'
elif [ $1 == "lua" ];then
	file='../\(.*CMakeLists.txt\|.*.\(cpp\|hpp\|lua\|c\|h\)\)'
elif [ $1 == "src" ];then
	file='../\(.*CMakeLists.txt\|\(Include\|Src\).*.\(cpp\|hpp\|c\|h\|CMakeLists.txt\)\)'
elif [ $1 == "nvr" ];then
	file='../\(.*CMakeLists.txt\|.*.\(cpp\|hpp\|c\|h\)\)'
elif [ $1 == "intell" ];then
	file='../\(.*CMakeLists.txt\|\(IntelliSrc\|Include\|Server\|Src\).*.\(cpp\|hpp\|c\|h\)\)'
else
	echo "[all|src|intell|lua|nvr]"
fi

echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/" > filenametags

find ../ -regex $file -type f -printf "%f\t%p\t1\n" | sort -f >> filenametags


#cscope use
find ../ -regex $file -type f > cscope.files
cscope -bq

#ctags use
ctags -L ./cscope.files --sort=1 --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f tags
~/sh/ycm/ycm.sh 
