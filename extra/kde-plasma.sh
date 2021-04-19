#!/bin/bash
## This script will install kde plasma desktop environment.

pacman -Syu
pacman -S --noconfirm xorg ttf-dejavu wqy-zenhei
pacman -S --noconfirm plasma sddm konsole dolphin kate
systemctl enable sddm NetworkManager
