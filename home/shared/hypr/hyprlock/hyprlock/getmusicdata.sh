#!/bin/sh

# function to get metadata using playerctl
get_metadata() {
  key=$1
  playerctl metadata --format "{{ $key }}" 2>/dev/null
}

# function to determine the source and return an icon and text
get_source_info() {
  trackid=$(get_metadata "mpris:trackid")
  if [[ "$trackid" == *"firefox"* ]]; then
    echo -e "󰈹 Firefox"
  elif [[ "$trackid" == *"spotify"* ]]; then
    echo -e " Spotify"
  elif [[ "$trackid" == *"chromium"* ]]; then
    echo -e " Chrome"
  else
    echo " Source"
  fi
}

# main
case "$1" in
--title)
  get_metadata "xesam:title"
  ;;
--arturl)
  url=$(get_metadata "mpris:artUrl")
  if [ -z "$url" ]; then
    echo ""
  else
    if [[ "$url" == file://* ]]; then
      url=${url#file://}
    elif [[ "$url" == https://i.scdn.co/* ]]; then
      cd "$HOME/.config/hypr/hyprlock"
      temp_url=$(echo $url | awk -F '/' '{print $5}')
      if [ ! -f "${temp_url}" ]; then
        rm *[^.jpg][^.sh][^.webp] >/dev/null 2>/dev/null
        wget $url -O $temp_url >/dev/null 2>/dev/null
      fi
      url="$HOME/.config/hypr/hyprlock/${temp_url}"
    fi
    echo "$url"
  fi
  ;;
--artist)
  get_metadata "xesam:artist"
  ;;
--source)
  get_source_info
  ;;
*)
  echo "Invalid parameter: $2"
  echo "Usage: $0 --title | --arturl | --artist | --source"
  exit 1
  ;;
esac
