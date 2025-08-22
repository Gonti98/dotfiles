#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

OUT=$(swaymsg --type get_outputs | grep --only-matching --extended-regexp 'DP-[^"]+' | grep --invert-match 'DP-1' || true)
if [ -z "${OUT}" ]; then
    swaymsg output eDP-1 mode 1920x1080@60Hz pos 0 1440
    exit 0
else
    swaymsg output eDP-1 mode 1920x1080@60Hz pos 0 1440
    swaymsg output "${OUT}" mode 2560x1440@74.968Hz pos 0 0
    exit 0
fi

