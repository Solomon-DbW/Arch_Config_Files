#!/bin/bash

# Check for available updates
UPDATES=$(pacman -Qu | wc -l)

if [[ "$UPDATES" -eq 0 ]]; then
    notify-send "System is up to date"
    exit 0
fi

# Rofi Menu
CHOICE=$(echo -e " View Updates\n Update System\n Cancel" | rofi -dmenu -p "$UPDATES Update(s) Available")

case "$CHOICE" in
    " View Updates")
        # Show available updates in a terminal
        kitty -e bash -c "pacman -Qu; read -p 'Press enter to exit...'" ;;
    " Update System")
        # Update the system using paru
        kitty -e bash -c "paru -Syu && notify-send 'System updated successfully!'; read -p 'Press enter to exit...'" ;;
    " Cancel")
        # Do nothing
        exit 0 ;;
    *)
        # Handle invalid options
        exit 1 ;;
esac

