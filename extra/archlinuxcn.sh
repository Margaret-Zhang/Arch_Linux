#!/bin/bash
# set archlinuxcn mirror site

# archlinuxcn
cat >> /etc/pacman.conf << "EOF"
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch
EOF

pacman -Sy --noconfirm archlinuxcn-keyring
pacman -Syu --noconfirm

