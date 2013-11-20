#!/bin/bash

modprobe usbserial vendor=0x12d1 product=0x14fe
#modprobe cdc_ncm

# use different product code based on your lsusb output
echo "12d1 14fe" > /sys/bus/usb-serial/drivers/option1/new_id

#/usr/share/usb_modeswitch
#usb_modeswitch -v 0x12d1 -p 0x14fe -c /tmp/12d1:14fe
