#!/bin/sh

if [[ $(hyprctl getoption animations:enabled | head -1 | cut -d ' ' -f 2) -eq 1 ]]; then
    hyprctl keyword animations:enabled 0
    hyprctl keyword decoration:rounding 0;
    hyprctl keyword decoration:active_opacity 1.0;
    hyprctl keyword decoration:inactive_opacity 1.0;
    hyprctl keyword decoration:blur:size 1000000;
    notify-send "Animations off"
else
    hyprctl keyword animations:enabled 1
    hyprctl keyword general:border_saize 4;
    hyprctl keyword decoration:rounding 6;
    hyprctl keyword decoration:active_opacity 0.95;
    hyprctl keyword decoration:inactive_opacity 0.9;
    hyprctl keyword decoration:blur:size 6;
    notify-send "Animations on"
fi
