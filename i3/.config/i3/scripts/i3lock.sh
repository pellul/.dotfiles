#!/bin/bash
img=$(mktemp /tmp/XXXXXXXXXX.png)

# screenshot
import -window root $img &
shot_pid=$!

# temporary lock
i3lock -n -c '#1B262C' -u &
lock_pid=$!

# wait for the screenshot to end before processing it with ImageMagick
while [ -n "$shot_pid" -a -e /proc/$shot_pid ]
do
sleep 0.1
done

convert $img -scale 10% -scale 1000% -quality 1 miff:- |\
composite -gravity Southwest $HOME/.config/i3/scripts/chira.png miff:- $img &&
kill $lock_pid
i3lock -n -t -u -i $img

rm $img
