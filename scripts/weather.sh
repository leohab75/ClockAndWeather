#!/bin/env bash

curl   wttr.in/?format="%l:+%C:+%t:+%h:+%w:+%P:" -s -o  $HOME/.cache/weather.txt

