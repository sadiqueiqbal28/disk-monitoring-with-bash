#!/bin/bash

used=$(df -h | grep nvme0n1p2 | awk '{print $5}' | tr -d %)
if [[ $used -ge 85 ]]
then
	echo "WARNING! Storage exceeds 85%. Free up come space"
else
	echo "Enough storage space available: $((100-$used))%"
fi
