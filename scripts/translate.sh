#!/bin/env bash

if [[ ! -f  $HOME/.conky/ClockAndWeather/trans ]]; then
    wget git.io/trans -o $HOME/.conky/ClockAndWeather/
    chmod +x $HOME/.conky/ClockAndWeather/trans
fi

weatherDesc=$(cat $HOME/.cache/weather.txt | cut -f 2 -d ":")

trans=$(echo -e "$weatherDesc" | $HOME/.conky/ClockAndWeather/trans -s=en -t=ru -show-dictionary=n -show-translation-phonetics=n -show-original=n -show-languages=n -show-prompt-message=n -show-original=n -show-original-dictionary=n -show-original=n -show-alternatives=n -no-warn)

echo -e "$trans"
