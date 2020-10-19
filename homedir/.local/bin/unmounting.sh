#!/usr/bin/bash

IFS=""
DEVICES=(`lsblk -nr -o NAME,SIZE,FSTYPE,MOUNTPOINT | awk '$3!="squashfs" && $3!="" && $4!="" && $4!="/" && $4!="/boot/efi"'`)
#jmtpfs -l

#for item in ${DEVICES[*]}
#do
#  printf "%s\n" $item
#done

choice=$(echo -e "${DEVICES[@]}" | rofi -dmenu -theme ~/.config/rofi/solarized-black.rasi -p "unmount")

DRV=`echo $choice | awk '{print $1}'`

if [ -n "$DRV" ]; then
    udisksctl unmount -b /dev/$DRV 
fi

