#!/bin/sh
#uid=1002(chenkaikai) gid=1002(chenkaikai) groups=1002(chenkaikai)
sudo mount.cifs //10.12.2.165/work ./work -o user=Administrator,password=$1,uid=1002,gid=1002,rw,nounix,noserverino
sudo mount.cifs //10.12.2.165/data ./data -o user=Administrator,password=$1,uid=1002,gid=1002,rw,nounix,noserverino
