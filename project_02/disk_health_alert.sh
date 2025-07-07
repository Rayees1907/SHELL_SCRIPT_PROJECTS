#!/bin/bash

#this is the script to check and give alert message of disk health

disk_health=$(df -h | grep /dev/nvme0n1p2 | awk '{print $5}' | cut -d '%' -f1)

if [ "$disk_health" -gt 30 ];
then
    echo "$disk_health% this is your disk_health"
    echo "Your disk_health is greater than 17% remove files soon or upgrade the disk space !"
else
    echo "Your disk_health is Good ! "
fi