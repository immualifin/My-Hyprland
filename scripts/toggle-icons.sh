#!/bin/bash

# Script to toggle between black and white icons.

STATE_FILE="/home/inuma/.config/Modus/.icon_state"

# If state file doesn't exist or is set to "white", switch to black.
if [ ! -f "$STATE_FILE" ] || [ "$(cat "$STATE_FILE")" = "white" ]; then
  # Run the script to set black icons
  /home/inuma/.config/Modus/set-black-icons.sh
  # Save the new state
  echo "black" > "$STATE_FILE"
else
  # Run the script to restore white icons
  /home/inuma/.config/Modus/restore-white-icons.sh
  # Save the new state
  echo "white" > "$STATE_FILE"
fi
