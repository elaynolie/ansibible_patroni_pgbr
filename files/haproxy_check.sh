#!/bin/bash


http_code=$(curl -LI -X GET http://localhost:8008/leader -o /dev/null -w ‘%{http_code}\n’ -s)
if [ ${http_code} -eq 200 ] ;
        then exit 0
elif [ ${http_code} -eq 503 ] ;
       then exit 1
fi


