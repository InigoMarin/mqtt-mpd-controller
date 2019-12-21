#!/bin/bash
mpc pause
amixer get Master | awk '$0~/%/{print $4}' | tr -d '[]' >/var/tmp/volume.txt
espeak -f /var/tmp/volume.txt
mpc play
