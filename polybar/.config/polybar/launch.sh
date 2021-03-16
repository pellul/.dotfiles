#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload top &
    MONITOR=$m polybar --reload bottom &
#    MONITOR=$m polybar --reload external &
done


