#!/bin/sh

# Copyright 2016-2018, Ankit R Gadiya
# BSD 3-Clause License

xset -b
xrdb -merge $HOME/.Xresources
xmodmap $HOME/.Xmodmap

urxvtd -q -f -o

exec i3
