#!/bin/bash
JSON=$(curl --max-time 3 -sf "https://api.openweathermap.org/data/2.5/weather?id=484907&units=metric&appid=d0409149ba9040474a5fa19d5a526893")

if [ $? -ne 0 ]; then
	echo ""
fi

temp=$(echo "$JSON" | jq '.main.temp')
humidity=$(echo "$JSON" | jq '.main.humidity')
sunset_timestamp=$(echo "$JSON" | jq '.sys.sunset')
sunset=$(echo "@$sunset_timestamp" | date +'%H:%M' -f -)

echo "$temp°C  $humidity    $sunset"
