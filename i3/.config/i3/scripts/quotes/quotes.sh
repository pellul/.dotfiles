#!/bin/bash

# words per minute
wpm=250
min_display_time=1500

pushd $HOME/.config/i3/scripts/quotes/

while :
do
    universe=$(ls -d */ | sort -R | head -1 | sed 's/\///')
    pushd $universe

    character=$(find . -maxdepth 1 -type f -printf "%f\n" | sort -R | head -1 | sed 's/\.[^.]*$//') &&
    quote=$(cat $character.txt | sort -R | head -1)

    waiting_time=$(($(echo $quote|wc -w) * 60 * 1000 / $wpm / 1000 * 1000 + 1000))
    # prevent short loops
    ((waiting_time < min_display_time)) && waiting_time=$min_display_time

    notify-send \
        -a "${universe^}" \
        -i `pwd`/$character.jpg \
        "${character^}" \
        "$quote" \
        -t $waiting_time

    sleep $(($waiting_time / 1000))
    popd
done

popd

