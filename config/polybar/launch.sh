#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

export MONITOR_PRIMARY=DP-2

# Launch Polybar, using default config location ~/.config/polybar/config
polybar --reload primary-top &
polybar --reload primary-bottom &

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	if [ $m != $MONITOR_PRIMARY ]; then
		MONITOR=$m polybar --reload secondary-top &
	fi
done

echo "Polybar launched..."
