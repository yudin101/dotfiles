#!/bin/sh
xmodmap -e "keycode 108 = Super_R"
xmodmap -e "remove mod1 = Super_R"
xmodmap -e "add mod4 = Super_R"
