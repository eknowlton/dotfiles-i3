#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

export MONITOR_PRIMARY=DVI-D-0

echo "Primary Monitor: $MONITOR_PRIMARY"
# Launch Polybar, using default config location ~/.config/polybar/config
polybar primary-top &
polybar primary-bottom &

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  echo "Monitor $m"
  if [ $MONITOR_PRIMARY != $m ]; then
    echo "Starting sencondary-top for monitor $m"
    MONITOR_SECONDARY=$m polybar --reload secondary-top &
  fi
done

echo "Polybar launched..."
