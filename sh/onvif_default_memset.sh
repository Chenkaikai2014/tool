#!/bin/sh
cat OnvifC.cpp | awk -F' ' 'BEGIN{i=0} /SOAP_FMAC3 void SOAP_FMAC4 soap_default_/{i=1;} {if(i==0){print $0}} /}/{if(i==1){i=0;}}'>all_no_default.c
sed -i "s/soap_default_.*(soap,\(.*\));/memset(\1,0,sizeof(*(\1)));/g"  ./all_no_default.c 
