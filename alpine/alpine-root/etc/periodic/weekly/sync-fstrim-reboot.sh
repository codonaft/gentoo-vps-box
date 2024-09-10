#!/usr/bin/env bash

sync
echo 3 > /proc/sys/vm/drop_caches
fstrim -v / 2>>/dev/stdout | logger

#logger 'weekly reboot to apply all updates'
#reboot
