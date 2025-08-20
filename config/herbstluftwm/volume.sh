#!/bin/bash

case $1 in
    down)
        # amixer -q set Master 10%- unmute
        pactl set-sink-volume @DEFAULT_SINK@ -10%
        herbstclient emit_hook volume
        ;;
    up)
        # amixer -q set Master 10%+ unmute
        pactl set-sink-volume @DEFAULT_SINK@ +10%
        herbstclient emit_hook volume
        ;;
    mute)
        # amixer -q set Master toggle
        pactl set-sink-mute @DEFAULT_SINK@ toggle
        herbstclient emit_hook volume_toggle
        ;;
esac

amixer get Master | grep '%' | dzen2 -p 1
