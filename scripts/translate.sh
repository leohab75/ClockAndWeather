#!/bin/env bash

if [[ ! -f trans ]]; then
    wget git.io/trans -o $HOME/.conky/ClockAndWeather/scripts/
    chmod +x $HOME/.conky/ClockAndWeather/scripts/trans
fi

weatherDesc=$(cat $HOME/.cache/weather.txt | cut -f 2 -d ":")

echo $weatherDesc | ./trans -s=en -t=ru -show-dictionary=n -show-translation-phonetics=n -show-original=n -show-languages=n -show-prompt-message=n -show-original=n -show-original-dictionary=n -show-original=n -show-alternatives=n -no-warn
