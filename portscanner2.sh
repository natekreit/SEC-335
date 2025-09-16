#!/bin/bash

ports=$2
echo "ip,     port"
for i in {1..254}; do
        network=$1.$i
        for ip in $network ; do
                for port in $ports; do
                        timeout .1 bash -c "echo >/dev/tcp/$ip/$port" 2>/dev/null &&
                                echo "$ip,     $port"
                done
        done
done
