#!/bin/sh

swww img $(for a in ~/pictures/wallpapers/* ; do echo -en "$a\0icon\x1f$a\n" ; done | rofi -config ~/.config/rofi/wallset.rasi -dmenu)
