#!/bin/sh

if [[ $(hyprctl getoption animations:enabled | head -1 | cut -d ' ' -f 2) -eq 1 ]]; then
    hyprctl keyword animations:enabled 0
    hyprctl keyword general:gaps_in 5;
    hyprctl keyword general:gaps_out 20;
    hyprctl keyword general:border_size 4;
    hyprctl keyword decoration:rounding 0;
    hyprctl keyword decoration:active_opacity 1.0;
    hyprctl keyword decoration:inactive_opacity 1.0;
    hyprctl keyword decoration:blur:size 1000000;
    notify-send "Animations off"
else
    hyprctl reload
    notify-send "Animations on"
fi
