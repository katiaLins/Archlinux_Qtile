#!/bin/sh
#feh --bg-scale /home/ka/Imagens/IMG/wallpaper11.jpg
picom & ka # --experimental-backends --vsync should prevent screen tearing on most setups if needed

# Low battery notifier
~/.config/qtile/scripts/check_battery.sh & ka
~/.config/qtile/scripts/low_bat_notifier.sh & ka
cbatticon & ka

# Start welcome
eos-welcome & ka
nm-applet &
nitrogen --restore



/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & disown # start polkit agent from GNOME
