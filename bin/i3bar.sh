#!/usr/bin/env bash
i3status -c ~/.config/i3/i3status.conf | while :
do
    read -r line
    network=$(~/.config/i3/bin/network )
    echo "$network | $line" || exit 1
done
