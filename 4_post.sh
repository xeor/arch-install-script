#!/bin/sh

pacman -S openssh

systemctl enable dhcpcd sshd

mkdir /root/.ssh
curl https://github.com/xeor.keys > /root/.ssh/authorized_keys

echo "We are done.. Logout and reboot if you dont want to do more stuff manually"
