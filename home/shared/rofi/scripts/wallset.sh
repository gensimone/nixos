#!/bin/sh

result=$(for a in ~/pictures/wallpapers/* ; do echo -en "$a\0icon\x1f$a\n" ; done | rofi -config ~/.config/rofi/wallset.rasi -dmenu)
swww img "$result" --transition-type center --transition-fps 120 --transition-step 50
