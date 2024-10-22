#!/bin/bash

source ~/.config/colors.conf

ALACRITTY_CONF="$HOME/.dotfiles/alacritty/.config/alacritty/alacritty.toml"

cat <<EOL > "$ALACRITTY_CONF"
[colors.normal]
black = "$COLOR_BLACK"
blue = "$COLOR_BLUE"
cyan = "$COLOR_CYAN"
green = "$COLOR_GREEN"
magenta = "$COLOR_MAGENTA"
red = "$COLOR_RED"
white = "$COLOR_WHITE"
yellow = "$COLOR_YELLOW"

[colors.primary]
background = "$COLOR_BACKGROUND"
bright_foreground = "$COLOR_BACKGROUND_LIGHT"
foreground = "$COLOR_PRIMARY"

[colors.footer_bar]
background = "$COLOR_BACKGROUND"
foreground = "$COLOR_PRIMARY"

[colors.cursor]
cursor = "CellForeground"
text = "CellBackground"

[font]
size = 11.0

[font.normal]
family = "Inconsolata"
style= "Regular"

[window]
dynamic_padding = true
decorations = "None"

[scrolling]
history = 0

[shell]
args = ["--login", "-c", "tmux attach || tmux"]
program = "/usr/bin/bash"

EOL