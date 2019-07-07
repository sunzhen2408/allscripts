#!/bin/bash
VAR="eth0"
#local_host="`hostname --fqdn`"
#local_ip=`host $local_host 2>/dev/null| awk '{print $NF}'`
#local_ip = /sbin/ifconfig|sed -n '/inet addr/s/^[^:]*:[0−9.]{7,15} .*/\1/p'
#echo "sun"
#echo ${local_ip}
ip="$(ip addr show "$VAR"|grep "inet\b"|awk '{print $2}')"
local_ip="${ip%/*}"
echo $local_ip
