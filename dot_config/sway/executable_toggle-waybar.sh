#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

# Function to show an error popup
error_popup() {
  local msg="$1"
  # Display a notification
  notify-send "Waybar Script Error" "$msg" -u critical
}

# Trigger the popup on any command error
trap 'error_popup "Command \"$BASH_COMMAND\" failed."' ERR

PID=$(pgrep --euid "$USER" --exact "waybar" | head --lines 1 || true )

if [[ -z "$PID" ]]; then
  nohup waybar > /dev/null 2>&1 &
  exit 0
else
  kill -TERM "$PID"
  exit 0
fi
