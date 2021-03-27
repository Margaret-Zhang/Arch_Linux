#!/bin/bash
## This script should run after arch-chroot.

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc

mv /etc/locale.gen /etc/locale.gen.bak
cat > /etc/locale.gen << "EOF"
en_US.UTF-8 UTF-8
zh_CN.UTF-8 UTF-8
EOF
locale-gen

echo "LANG=en_US.UTF-8" > /etc/locale.conf

echo "Arch-Yahoo" > /etc/hostname
cat >> /etc/hosts << "EOF"
127.0.0.1	localhost
::1		locahost
127.0.1.1	Arch-Yahoo.localdomain Arch-Yahoo
EOF

echo "Setting root's password"
passwd root

## User
useradd -m -s /bin/bash -G wheel link
echo "Setting link's password"
passwd link
vim /etc/sudoers

## Grub
echo "Now install grub2 on your disk and modify /etc/fstab."
echo "For example:"
echo -e "\tgrub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=ARCH"
echo -e "\tgrub-mkconfig -o /boot/grub/grub.cfg"
echo -e "\tblkid"
echo -e "\tvim /etc/fstab"

