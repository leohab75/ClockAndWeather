#!/bin/env bash

rm -f  weather.txt
curl   wttr.in/?format="%l:+%C:+%t:+%h:+%w:+%P:" -s -o  weather.txt

