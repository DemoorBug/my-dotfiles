#!/bin/bash

path="$PWD"/
config="/Users/demoorbug/.config/"
mydotfiles="/Users/demoorbug/Developments/Mydotfiles/"
if [ "$1" = "rm" ]; then
rm -rf "$mydotfiles"AlfredWorkflows/
rm -rf "$mydotfiles"fish/
rm -rf "$mydotfiles"nvim/
fi

cp "$config"../.gitconfig "$mydotfiles"
cp -r "$path" "$mydotfiles"AlfredWorkflows/
cp -r "$config"fish/ "$mydotfiles"fish
cp -r "$config"nvim/ "$mydotfiles"nvim


cd "$mydotfiles"
git add .
git ci -m 'auto update'
git ps

