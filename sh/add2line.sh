#! /bin/sh
if [ -f "./add2line.config" ];then
	eval $(awk '{printf("var1=%s; var2=%s; var3=%s;",$1,$2,$3)}' ./add2line.config)
	name=$var1
	filename=$var2
	addr2line=$var3
	awk 'BEGIN {print $name} /.*/{ cmd="'"$addr2line"' -e ""'"$name"'"" -f "$0;system(cmd) } END{ }' $filename
else
	echo "Error NO Find add2line.config"
fi
