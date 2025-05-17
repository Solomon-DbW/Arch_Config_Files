#!/bin/bash

# Get brightness using light (install with 'pacman -S light')
if command -v light &> /dev/null; then
    brightness=$(light -G | awk '{print int($1) + 1}')
    echo "$brightness%"
else
    echo "N/A"
fi
