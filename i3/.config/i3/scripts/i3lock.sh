#!/bin/bash

pushd $HOME/.config/i3/scripts
img=$(mktemp /tmp/XXXXXXXXXX.png)

waifu=$(find ./images -maxdepth 1 -type f -printf "%f\n" | sort -R | head -1)
gravity=${waifu%_*}

# screenshot
import -window root $img

# quote=$(cat ./quotes/kaamelott.txt | sort -R | head -1 | fold -sw 75)
# minfontsize=30
# fontsize=$((50 - ${#quote} / 20))
# ((fontsize < minfontsize)) && fontsize=$minfontsize

convert $img \
    -scale 10% -scale 1000% -quality 1 miff:- |\
    # -gravity NorthWest -fill black -pointsize $fontsize -annotate +103+153 "$quote" \
    # -gravity NorthWest -fill white -pointsize $fontsize -annotate +100+150 "$quote" miff:- | \
    composite -gravity $gravity ./images/$waifu miff:- $img

#./quotes/quotes.sh &
#quotes_pid=$!

i3lock -utni $img

#kill $quotes_pid
rm $img
popd
