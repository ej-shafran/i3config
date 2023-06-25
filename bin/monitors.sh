#!/usr/bin/env bash

monitors="$(xrandr --listactivemonitors | awk '{print $4}')"
primary="$(echo $monitors | cut -d' ' -f1)"
secondary="$(echo $monitors | cut -d' ' -f2)"

if [ -z "$secondary" ];
  then xrandr --output $primary --auto
  else xrandr --output $secondary --scale '0.8x0.8' --left-of $primary--auto
fi

