#!/bin/bash
VAR="eth0"
ip="$(ip addr show "$VAR"|grep "inet\b"|awk '{print $2}')"
local_ip="${ip%/*}"
chmod -R 777 /root/zhenlingFrameworknew
sed -i 's/initip/'${local_ip}'/g' /root/zhenlingFrameworknew/Server/ServerConfig.js
