#!/bin/sh

set -x

bootctl --path=/boot install

cat << EOF > /boot/loader/loader.conf
default  arch
timeout  4
editor   0
EOF

cat << EOF > /boot/loader/entries/arch.conf
title          Arch Linux
linux          /vmlinuz-linux
initrd         /initramfs-linux.img
options        root=/dev/mapper/vg1-root rw
EOF

pacman -S lvm2

sed s'/block filesystem/block lvm2 filesystem/' -i /etc/mkinitcpio.conf
mkinitcpio -p linux

