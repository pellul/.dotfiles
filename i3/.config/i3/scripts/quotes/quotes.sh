#!/bin/bash

pushd $HOME/.config/i3/scripts/quotes/
universe=$(ls -d */ | sort -R | head -1 | sed 's/\///')

cd $universe

character=$(find . -maxdepth 1 -type f -printf "%f\n" | sort -R | head -1 | sed 's/\.[^.]*$//') &&
quote=$(cat $character.txt | sort -R | head -1)

killall dunst;notify-send \
    -a "${universe^}" \
    -i `pwd`/$character.jpg \
    "${character^}" \
    "$quote"

popd