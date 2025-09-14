#!/bin/bash

hostfile=$1
portfile=$2
echo "host,port"
for i in {1..254}; do
        host="${hostfile}.${i}"
        for port in $(cat $portfile); do
                timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null &&
                        echo "$host,$port"
        done
done

