!/bin/bash

hostfile=$1
dnsserver=$2
for i in {1..254}; do
        host="${hostfile}.${i}"
        nslookup $host $dnsserver | grep 'name =' 
done
