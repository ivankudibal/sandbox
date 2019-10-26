#!/bin/bash

n=0
MMAX=10
WAITME=1

while [ $n -lt $MMAX ]
do
    if curl http://localhost:9999/ ; then
        echo "Influx is running"
        break;
    fi
    sleep $WAITME
    n=$[n+1]
done

if [ $n -eq $MMAX ]; then 
    exit 1
fi
