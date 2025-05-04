#!/bin/bash

source ~/.config/colors.conf

COLORS_CONF="$HOME/.dotfiles/polybar/.config/polybar/colors.ini"

cat <<EOL > "$COLORS_CONF"
[colors]
accent = "$COLOR_WHITE"
backgroundlight = "$COLOR_LIGHT_BLACK"
background = "$COLOR_BACKGROUND"
EOL
