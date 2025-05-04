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

[colors.bright]
black = "$COLOR_LIGHT_BLACK"
blue = "$COLOR_LIGHT_BLUE"
cyan = "$COLOR_LIGHT_CYAN"
green = "$COLOR_LIGHT_GREEN"
magenta = "$COLOR_LIGHT_MAGENTA"
red = "$COLOR_LIGHT_RED"
white = "$COLOR_LIGHT_WHITE"
yellow = "$COLOR_LIGHT_YELLOW"

[colors.primary]
foreground = '$COLOR_FOREGROUND'
background = "$COLOR_BACKGROUND"

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

[terminal.shell]
args = ["--login", "-c", "tmux attach || tmux"]
program = "/usr/bin/bash"

EOL
