#!/bin/bash
mpc pause
mpc > /var/tmp/mpc.txt
awk '{if (NR!=2) {print}}' /var/tmp/mpc.txt > /var/tmp/mpc2.txt
awk '{if (NR!=2) {print}}' /var/tmp/mpc2.txt > /var/tmp/mpc3.txt
espeak -f /var/tmp/mpc3.txt
mpc play
