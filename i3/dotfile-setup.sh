#!/bin/bash

source ~/.config/colors.conf

COLORS_CONF="$HOME/.dotfiles/i3/.config/i3/colors.ini"

cat <<EOL > "$COLORS_CONF"
set \$primary $COLOR_PRIMARY
set \$secondary $COLOR_BACKGROUND
set \$accent $COLOR_BACKGROUND_LIGHT
EOL