#!/bin/bash

if [[ ! -d ~/.cache/weather/ ]]; then
mkdir ~/.cache/weather/
fi

rm -f ~/.cache/weather/*

curl wttr.in/?format=j1 -s -o weather.json

#сегодня
code=$(cat weather.json | jq -r '.weather[0].hourly[2].weatherCode')
curl https://cdn.weatherapi.com/weather/64x64/day/$code.png -s -o ~/.cache/weather/1.1.png

code=$(cat weather.json | jq -r '.weather[0].hourly[4].weatherCode')
curl https://cdn.weatherapi.com/weather/64x64/day/$code.png -s -o ~/.cache/weather/1.2.png

code=$(cat weather.json | jq -r '.weather[0].hourly[4].weatherCode')
curl https://cdn.weatherapi.com/weather/64x64/day/$code.png -s -o ~/.cache/weather/1.3.png

#завтра
code=$(cat weather.json | jq -r '.weather[1].hourly[2].weatherCode')
curl https://cdn.weatherapi.com/weather/64x64/day/$code.png -s -o ~/.cache/weather/2.1.png

code=$(cat weather.json | jq -r '.weather[1].hourly[4].weatherCode')
curl https://cdn.weatherapi.com/weather/64x64/day/$code.png -s -o ~/.cache/weather/2.2.png

code=$(cat weather.json | jq -r '.weather[1].hourly[6].weatherCode')
curl https://cdn.weatherapi.com/weather/64x64/day/$code.png -s -o ~/.cache/weather/2.3.png

#послезавтра
code=$(cat weather.json | jq -r '.weather[2].hourly[2].weatherCode')
curl https://cdn.weatherapi.com/weather/64x64/day/$code.png -s -o ~/.cache/weather/3.1.png

code=$(cat weather.json | jq -r '.weather[2].hourly[4].weatherCode')
curl https://cdn.weatherapi.com/weather/64x64/day/$code.png -s -o ~/.cache/weather/3.2.png

code=$(cat weather.json | jq -r '.weather[2].hourly[6].weatherCode')
curl https://cdn.weatherapi.com/weather/64x64/day/$code.png -s -o ~/.cache/weather/3.3.png
