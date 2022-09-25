#!/usr/bin/env bash

#cs ----------------------------------------------------------------------------
#   I was fair with you and didn't include any bits of malicious code (AFAIK),
#   don't steal my code or I'll find you, put my big toes into your nostrils
#   and open umbrella in your ass :)
#
#   Copyright (C) Markospoko (taomarku at gmail.com)
#ce ----------------------------------------------------------------------------

buddies=("" "R" "i" "g" "E" "U" "O" "G" "F" "H" "j" "L" "d")

# Change buddy every 5 mins.
part=$((($(date "+%H") % 3) + 1))
cycle=$(($(date "+%M")/15 + 1))
bdy=$(($part * $cycle))

echo "${buddies[$bdy]}"

exit 0
