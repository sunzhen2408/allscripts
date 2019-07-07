#!/bin/bash
cd /etc/netplan
rm -rf /etc/netplan/50-cloud-init.yaml
cp /root/allscripts/50-cloud-init.yaml /etc/netplan/
netplan apply 50-cloud-init.yaml 
