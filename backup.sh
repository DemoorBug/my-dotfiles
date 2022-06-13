#!/bin/bash

rm -rf ./arch/dwm
rm -rf ./arch/st
rm -rf ./arch/slstatus
rm -rf ./arch/dmenu
mkdir ./arch/dwm
mkdir ./arch/st
mkdir ./arch/slstatus
mkdir ./arch/dmenu
cp -r $HOME/.config/dwm/* ./arch/dwm
cp -r $HOME/.config/st/* ./arch/st
cp -r $HOME/.config/slstatus/* ./arch/slstatus
cp -r $HOME/.config/dmenu/* ./arch/dmenu

cp $HOME/.Xresources ./arch
cp $HOME/.xinitrc ./arch
cp $HOME/.xprofile ./arch
cp $HOME/.Xmodmap ./arch
cp $HOME/.gitconfig .
