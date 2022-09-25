#!/bin/bash

echo $(pwd)


if [[ ! -d $HOME/.conky ]]; then
    mkdir $HOME/.conky
fi


cp -r  $(pwd)/ClockAndWeather/  $HOME/.conky || exit 1

if [[ ! -d $HOME/.fonts ]]; then
    mkdir $HOME/.fonts
fi

cp -r "/home/leohab/.conky/ClockAndWeather/fonts/" "$HOME/.fonts"
fc-cache -f

echo -e "[Desktop Entry]" > /home/leohab/.config/autostart/conky.desktop
echo -e "Name=Conky" >> /home/leohab/.config/autostart/conky.desktop
echo -e "Name[en_IN]=Conky" >> /home/leohab/.config/autostart/conky.desktop
echo -e "X-GNOME-Autostart-enabled=true" >> /home/leohab/.config/autostart/conky.desktop
echo -e "NoDisplay=false" >> /home/leohab/.config/autostart/conky.desktop
echo -e "Hidden=false" >> /home/leohab/.config/autostart/conky.desktop
echo -e "Exec=sh '$HOME/.conky/ClockAndWeather/conky-startup.sh'" >> /home/leohab/.config/autostart/conky.desktop
echo -e "Type=Application" >> /home/leohab/.config/autostart/conky.desktop


