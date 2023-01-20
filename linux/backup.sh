#!/bin/bash

rm -rf ./arch/dwm
rm -rf ./arch/st
rm -rf ./arch/slstatus
rm -rf ./arch/dmenu
rm -rf ./arch/slock
rm -rf ./arch/rofi
rm -rf ./arch/.local/bin/script

mkdir ./arch/dwm
mkdir ./arch/st
mkdir ./arch/slstatus
mkdir ./arch/dmenu
mkdir ./arch/rofi
mkdir ./arch/slock
mkdir -p ./arch/.local/bin/script

cp -r $HOME/.config/dwm/* ./arch/dwm
cp -r $HOME/.config/st/* ./arch/st
cp -r $HOME/.config/slstatus/* ./arch/slstatus
cp -r $HOME/.config/dmenu-flexipatch/* ./arch/dmenu
cp -r $HOME/.config/slock-flexipatch/* ./arch/slock
cp -r $HOME/.config/rofi/* ./arch/rofi
# 要使用这个电源插件还必须安装xorg-xinput, dunst, polkit 这三个都可以在pacman 安装
cp -r $HOME/.local/bin/script/* ./arch/.local/bin/script

cp $HOME/.Xresources ./arch
cp $HOME/.xinitrc ./arch
cp $HOME/.xprofile ./arch
# cp $HOME/.Xmodmap ./arch
# /etc/keyd/default.conf
cp /etc/keyd/default.conf ./arch
cp $HOME/.gitconfig .
