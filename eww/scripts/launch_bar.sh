#!/bin/bash

# Kill any existing eww daemon
pkill eww

# Start eww daemon if not running
eww daemon

# Open the bar
eww open bar
