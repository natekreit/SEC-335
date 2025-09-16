#!/bin/bash

server=$2
echo "dns resolution for $1"
for i in {1..254} ; do
	network=$1.$i
	for ip in $network ; do
		nslookup $ip $server
	done
done
