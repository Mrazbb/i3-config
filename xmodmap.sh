#!/bin/bash

xmodmap /home/mrazbb/.config/xmodmap/.Xmodmap
xmodmap -e "remove lock = Caps_Lock"
setxkbmap -option caps:escape

xmodmap -e "keycode 107 = Super_L"
exit 0