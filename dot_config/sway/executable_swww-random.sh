#!/usr/bin/env bash

# Automatically sets a random wallpaper from a given directory in regular intervals using swww.

set -o errexit
set -o nounset
set -o pipefail

# Constants
INTERVAL=300
SWWW_TRANSITION="random"
SWWW_TRANSITION_FPS=60
SWWW_TRANSITION_STEP=10
SWWW_TRANSITION_DURATION=6

# Check if directory is provided and valid
if [[ $# -lt 1 || ! -d "$1" ]]; then
  echo "Usage: $0 <directory_with_images>"
  notify-send "ERROR" "Not valid directory!"
  exit 1
fi

IMAGE_DIR="$1"

# Start swww-daemon if not running
if ! pgrep --exact "swww-daemon" > /dev/null; then
  swww-daemon &
  sleep 1
fi

# Export transition settings
export SWWW_TRANSITION
export SWWW_TRANSITION_FPS
export SWWW_TRANSITION_STEP
export SWWW_TRANSITION_DURATION

# Main loop
while true; do
  find "$IMAGE_DIR" -type f \
    | while read -r img; do
        echo "$((RANDOM % 1000)):$img"
      done \
    | sort --numeric-sort \
    | cut --delimiter=':' --fields=2- \
    | while read -r img; do
        swww img "$img"
        sleep "$INTERVAL"
      done
done

