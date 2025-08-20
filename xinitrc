#!/bin/sh

pulseaudio --start
exec herbstluftwm
export DISPLAY=:0
