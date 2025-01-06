#!/bin/bash

# Rofi Menu
CHOICE=$(echo -e " Lock\n Sleep\n Restart\n Shutdown\n Log Out" | rofi -dmenu -p "Power Options")

case "$CHOICE" in
    " Lock")
        # Lock the screen
        hyprlock ;;
    " Sleep")
        # Suspend system
        systemctl suspend ;;
    " Restart")
        # Restart system
        systemctl reboot ;;
    " Shutdown")
        # Power off system
        systemctl poweroff ;;
    " Log Out")
        # Log out from Hyprland
        hyprctl dispatch exit ;;
    *)
        # If cancelled or no valid option selected
        exit 1 ;;
esac

