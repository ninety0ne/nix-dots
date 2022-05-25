#!/bin/sh

# Terminate already running bar instances
pkill polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload -c ~/.config/polybar/config.ini main &
  done
else
  polybar --reload -c ~/.config/polybar/config.ini main &
fi

echo "Polybar launched..."
