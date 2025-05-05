#!/bin/sh

wallpapers="$HOME/pictures/wallpapers"
cmd="swww img --transition-type center"

PREVIEW=true \
rofi -theme $HOME/.config/nixos/user/shared/rofi/nord.rasi \
	-show filebrowser -filebrowser-command "$cmd" \
	-filebrowser-directory "$wallpapers" \
	-filebrowser-sorting-method mtime \
	-selected-row 1 >/dev/null
