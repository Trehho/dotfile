#!/bin/bash

pacman -Syyu
pacman -S ly bspwm sxhkd feh xterm fzf exa bat vifm dmenu picom xorg xorg-xinit gnu-free-fonts 

mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd

cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm
cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd

cp /etc/X11/xinit/xinitrc ~/.xinitrc

systemctl enable ly.service