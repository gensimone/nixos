#!/bin/sh

on=$(hyprctl getoption animations:enabled | head -1 | cut -d ' ' -f 2)

if [[ $on -eq 1 ]]; then
    hyprctl keyword animations:enabled 0
    notify-send "Animations off"
else
    hyprctl keyword animations:enabled 1
    notify-send "Animations on"
fi
