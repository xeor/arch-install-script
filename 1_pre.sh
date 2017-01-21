#!/bin/sh

set -x

timedatectl set-ntp true
setfont sun12x22

for p in $(parted -s /dev/sda print | awk '/^ / {print $1}'); do
  parted -s /dev/sda rm ${p}
done

parted --script /dev/sda \
    mklabel gpt \
    mkpart ESP fat32 1MiB 513MiB \
    set 1 boot on \
    mkpart primary ext4 513MiB 100% \
    set 1 lvm on

pvcreate /dev/sda2
vgcreate vg1 /dev/sda2
lvcreate -L 10G -n root vg1
mkfs.xfs /dev/mapper/vg1-root

mount /dev/mapper/vg1-root /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot

pacstrap /mnt base
genfstab -U /mnt > /mnt/etc/fstab

echo "Now copy scripts into /mnt and run 'arch-chroot /mnt'"
