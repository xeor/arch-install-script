#!/bin/sh

set -x

ln -sf /usr/share/zoneinfo/Europe/Oslo /etc/localtime
hwclock --systohc

echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen

echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "KEYMAP=no-latin2" > /etc/vconsole.conf

echo "127.0.1.1 d1.boa.nu d1"  >> /etc/hosts
echo "d1" > /etc/hostname

