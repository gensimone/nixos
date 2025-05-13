#!/bin/sh

offset=1
gaps_in=$(hyprctl getoption general:gaps_in | head -1 | cut -d ' ' -f 3)
gaps_out=$(hyprctl getoption general:gaps_out | head -1 | cut -d ' ' -f 3)

if [ "$1" = "i" ]; then
  gaps_in=$((gaps_in + offset))
  gaps_out=$((gaps_out + offset))
else
  gaps_in=$((gaps_in - offset))
  gaps_out=$((gaps_out - offset))
fi

hyprctl keyword general:gaps_in $gaps_in
hyprctl keyword general:gaps_out $gaps_out
