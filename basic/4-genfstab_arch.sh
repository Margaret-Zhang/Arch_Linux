#!/bin/bash
## Use genfstab script to generate /etc/fstab to /mnt/etc/fstab and check

genfstab -U /mnt >> /mnt/etc/fstab

echo "print file /mnt/etc/fstab"
cat /mnt/etc/fstab

echo "bash 4-genfstab_arch.sh"
