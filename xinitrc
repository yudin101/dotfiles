#!/bin/sh

# enable picom
picom --daemon

~/.local/bin/fixkeys.sh
inputplug -c ~/.local/bin/keyboard-handler.sh

exec herbstluftwm
