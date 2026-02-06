#!/bin/bash

case $1 in
    down)
        amixer -q set Master 10%- unmute
        herbstclient emit_hook volume
        ;;
    up)
        amixer -q set Master 10%+ unmute
        herbstclient emit_hook volume
        ;;
    mute)
        # amixer -q set Master toggle
        wpctl set-mute 61 toggle
        herbstclient emit_hook volume_toggle
        ;;
esac

# amixer get Master | grep '%' | dzen2 -p 1

# get volume percent
vol=$(amixer get Master | grep -oP '\[\d+%\]' | head -1 | tr -d '[]')

# check mute status
mute=$(amixer get Master | grep -oP '\[(on|off)\]' | head -1 | tr -d '[]')

# decide what to show
if [ "$mute" = "off" ]; then
    display="Volume: Muted"
else
    display="Volume: $vol"
fi

# show in dzen2
echo "$display" | dzen2 -p 1 
