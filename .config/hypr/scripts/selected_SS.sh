#! /usr/bin/env bash


grim -g "$(slurp)" - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png | hyprctl notify -1 1000 "rgb(ff1ea3)" "Take screenshot"
