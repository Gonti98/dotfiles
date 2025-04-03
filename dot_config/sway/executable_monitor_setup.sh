#!/bin/bash

out=$(swaymsg -t get_outputs | grep -oE 'DP-[^"]+' | grep -v 'DP-1')

if [ -z "$out" ]; then
    swaymsg output eDP-1 mode 1920x1080@60Hz pos 0 1440
    exit 1
else
  swaymsg output eDP-1 mode 1920x1080@60Hz pos 0 1440
  swaymsg output $out mode 2560x1440@74.968Hz pos 0 0
fi
