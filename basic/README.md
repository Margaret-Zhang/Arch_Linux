## This script is for computer with WIFI, GPT(GUID) disk and boot by UEFI mode.
## version 1.6
## date 04.19.2021
## install archlinux basic system(target mounted on /mnt, use ustc mirrors)

1. bash 1-link_WIFI.sh
2. bash 2-mount_disk.sh
3. bash 3-pacstrap_arch.sh
4. bash 4-genfstab_arch.sh
5. bash 5-copy_scripts.sh
6. arch-chroot /mnt
7. cd ~/Arch_Linux/basic && bash 6-new_arch.sh
