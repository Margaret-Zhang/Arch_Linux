#!/bin/bash
## Singely to pacstrap packages to /mnt. You can append packages at line 9.
## necessary: bash bash-devel linux-firmware
## kernel: linux linux-headers (linux-lts, linux-lts-haeders for long time support)
## network: dhcpcd wpa_supplicant
## bootloader: grub os-prober efibootmgr(UEFI need)
## other: ...

## setup the fastest mirror site
cat > /etc/pacman.d/mirrorlist << "EOF"
Server = https://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch
EOF

pacstrap /mnt base base-devel linux-lts linux-lts-headers linux-firmware neofetch vim nano grub ntfs-3g dhcpcd wpa_supplicant os-prober net-tools wget openssh dhcpcd efibootmgr

head -9 README.md | tail -1

