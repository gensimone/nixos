#!/bin/sh

books="$HOME/books"
cmd="zathura"

PREVIEW=true \
rofi -theme $HOME/.config/nixos/user/shared/rofi/nord.rasi \
	-show filebrowser -filebrowser-command "$cmd" \
	-filebrowser-directory "$books" \
	-filebrowser-sorting-method mtime \
	-selected-row 1 >/dev/null
