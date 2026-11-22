#!/bin/sh
case "$1" in
  XISlaveAdded|XIDeviceEnabled) sleep 1; ~/.local/bin/fixkeys.sh ;;
esac
