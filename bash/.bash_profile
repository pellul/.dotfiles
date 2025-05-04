if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx /usr/bin/i3
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# $HOME/.config/bash/banners/banner.sh

# if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
#     exec startx
# fi

eval "$(ssh-agent -s)"
