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

- find a color palette to apply (hollow knight inspired?)

- provide comments and setup explanations

- improve feh to allow customized wallpaper depending on the desktop 

- generate background with triangulation using [triangula](https://github.com/RH12503/triangula)

- use Dunst Notifications 

- Toggle polybar to have "zen mode" [link](https://parasurv.neocities.org/hide-bar-i3wm.html)

- Learn more from [this guy](https://github.com/Rashad-707/wall-tile) 😍

- Take a look a picom (instead of compton) https://github.com/yshui/picom

- Open [neofetch](https://github.com/dylanaraps/neofetch) on start 

- Make emacs installation file + change colors according to the palette

`convert -resize $(xdpyinfo | grep dimensions | cut -d\  -f7 | cut -dx -f1) /home/pierre/Desktop/wallpaper.png test.png && i3lock -i test.png`
