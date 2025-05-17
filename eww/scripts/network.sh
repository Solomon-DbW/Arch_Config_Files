#!/bin/bash

# Check if connected to WiFi
wifi_connected=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d':' -f2)

# Check if ethernet is connected
ethernet_connected=$(nmcli -t -f device,state con show | grep ethernet | grep activated)

if [ -n "$wifi_connected" ]; then
    echo "$wifi_connected"
elif [ -n "$ethernet_connected" ]; then
    echo "Ethernet"
else
    echo "Disconnected"
fi
