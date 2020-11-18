#!/bin/bash

clear
echo

# screenfetch -p | awk 'NF'
screenfetch -p -d '-host;-kernel;-shell;-res;-de;-wmtheme;-gtk;-disk;-gpu;-mem'  | awk 'NF'

echo

df -hT -x squashfs -x tmpfs -x devtmpfs | sed '1d' | awk '$7!="/boot/efi"'

echo

ncal -B1 -A1

echo

# tint genact
# curl rate.sx/:help

python3 ./news.py

echo

curl --no-progress-meter rate.sx | grep -i -e Rank -e BTC -e ETH -e BCH -e ADA | awk '$5!="cryptocurrency"'

echo

