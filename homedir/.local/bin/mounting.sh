#!/usr/bin/bash

IFS=""
DEVICES=(`lsblk -nr -o NAME,SIZE,FSTYPE,MOUNTPOINT | awk '$3!="" && $4==""'`)
#jmtpfs -l

#for item in ${DEVICES[*]}
#do
#  printf "%s\n" $item
#done

choice=$(echo -e "${DEVICES[@]}" | rofi -dmenu -theme ~/.config/rofi/solarized-black.rasi -p "mount")

DRV=`echo $choice | awk '{print $1}'`

if [ -n "$DRV" ]; then
    udisksctl mount -b /dev/$DRV 
fi



