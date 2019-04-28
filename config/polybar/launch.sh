#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

export MONITOR_PRIMARY=eDP1

# Launch Polybar, using default config location ~/.config/polybar/config
polybar primary-top &
polybar primary-bottom &


echo "Polybar launched..."
