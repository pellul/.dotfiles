# Readme 

## Dependencies

stow 

i3-gaps

compton (pimp my windows)

tilda (dropdown term)

rofi (dmenu alternative)

feh (wallpaper)

conky (for fun)

xrandr (display monitor manager)

gnome-screenshot (to replace someday)

polybar

tmux

emacs 

xss-lock

ImageMagick

TODO:

- list fixes to occuring bugs (ssh-agent, etc...)

- provide explanations use it all

- improve feh to allow customized wallpaper depending on the desktop 

- generate background with triangulation using [triangula](https://github.com/RH12503/triangula)

`convert -resize $(xdpyinfo | grep dimensions | cut -d\  -f7 | cut -dx -f1) /home/pierre/Desktop/wallpaper.png test.png && i3lock -i test.png`
