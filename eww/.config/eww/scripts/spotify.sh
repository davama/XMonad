#!/usr/bin/env bash

CACHE="$HOME/.cache/eww_temp_spotify"

if [[ ! $(pidof eww) ]]; then
	eww daemon
	sleep 1
fi

run() {
	eww open spotify
}

if [[ ! -f "$CACHE" ]]; then
	touch "$CACHE"
	run
else
	eww close spotify
	rm "$CACHE"
fi
