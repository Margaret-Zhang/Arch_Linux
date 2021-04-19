#!/bin/bash
set -e

pacman -S --noconfirm firefox firefox-i18n-zh-cn
pacman -S --noconfirm gdb cmake clang git valgrind
pacman -S --noconfirm fcitx-im fcitx fcitx-configtool fcitx-googlepinyin
