#!/bin/bash

IP_RESULT=$(curl --max-time 3 -sf https://api.myip.com)

if [ $? -ne 0 ]; then
	echo ""
fi

ip=$(echo "$IP_RESULT" | jq -r '.ip')

echo " $ip"



