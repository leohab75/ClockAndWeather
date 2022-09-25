#!/bin/sh

sleep 20s
killall conky

cd "$HOME/.conky/ClockAndWEather"
conky -c "$HOME/.conky/ClockAndWeather/conky.conf" &
