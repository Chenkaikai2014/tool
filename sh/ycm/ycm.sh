#########################################################################
# File Name: file.sh
# Author: ZhiNuo IPC Group
# mail: 
# Created Time: Fri 17 Oct 2014 02:29:36 PM CST
#########################################################################
#!/bin/sh
#'-I',
#'-I',
#'../Include',
rm -f fileName
~/sh/ycm/ycmfileName.sh > ./fileName
rm -f ./.ycm_extra_conf.py
cat ~/sh/ycm/1 > .ycm_extra_conf.py
cat fileName >> .ycm_extra_conf.py
cat ~/sh/ycm/2 >> .ycm_extra_conf.py
