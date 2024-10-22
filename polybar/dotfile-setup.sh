#!/bin/bash

source ~/.config/colors.conf

COLORS_CONF="$HOME/.dotfiles/polybar/.config/polybar/colors.ini"

cat <<EOL > "$COLORS_CONF"
[colors]
accent = "$COLOR_PRIMARY"
backgroundlight = "$COLOR_BACKGROUND_LIGHT"
background = "$COLOR_BACKGROUND"
EOL