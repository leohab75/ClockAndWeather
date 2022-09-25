#!/bin/env bash

if [[ ! -f trans ]]; then
    wget git.io/trans
    chmod +x ./trans
fi

weatherDesc=$(cat weather.txt | cut -f 2 -d ":")

echo $weatherDesc | ./trans -s=en -t=ru -show-dictionary=n -show-translation-phonetics=n -show-original=n -show-languages=n -show-prompt-message=n -show-original=n -show-original-dictionary=n -show-original=n -show-alternatives=n -no-warn
