#! /usr/bin/env bash

cliphist list | rofi -dmenu -theme "~/.config/rofi/clipboard.rasi" | cliphist decode | wl-copy
