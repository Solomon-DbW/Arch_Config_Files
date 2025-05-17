#!/bin/bash

battery="/sys/class/power_supply/BAT1"

# If battery exists
if [ -d "$battery" ]; then
    capacity=$(cat "$battery/capacity")
    status=$(cat "$battery/status")
    
    if [ "$status" = "Charging" ]; then
        echo "$capacity%+"
    else
        echo "$capacity%"
    fi
else
    echo "N/A"
fi
