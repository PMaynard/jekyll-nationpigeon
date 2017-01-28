---
date: 2017-01-28 17:20
layout: post
slug: encrypted-alpine-linux
title: Encrypted Alpine Linux
categories:
- linux
---

Setting up basic LUKS encrypted alpine install. 

## Create two partitions

One for Boot and one for the rest. 
Make the boot partition bootable.

    /dev/sda1 - Boot
    /dev/sda2 - LUKS

## Setup Luks

Create the encrypted block.

    cryptsetup -y -v luksFormat /dev/sda2
    cryptsetup open /dev/sda2 cryptroot
    mkfs.ext4 /dev/mapper/cryptroot
    mount /dev/mapper/cryptroot /mnt

Confirm its working as expected.

    umount /mnt
    cryptsetup close cryptroot
    cryptsetup open /dev/sda2 cryptroot
    mount /dev/mapper/cryptroot /mnt

## Setup Boot

Format the boot partition.
This will be in plain text.

    mkfs.ext4 /dev/sda1
    mkdir /boot
    mount /dev/sda1 /mnt/boot

## Install 

Install the base system to the mounted and unlocked encrypted partition. 
Make sure that you've mounted the boot partition because it will also install the necessary files there.

    setup-disk -m sys /mnt

## Chroot into the new system

    cd /mnt
    mount --bind /dev dev
    mount -t devpts devpts dev/pts
    mount -t tmpfs tmpfs dev/shm
    mount -t proc proc proc
    mount -t sysfs sysfs sys
    chroot /mnt /bin/ash 

## Setup crypttab

Add information about the encrypted file system.

    echo "cryptroot /dev/sda2 none luks" > /etc/crypttab 


We also need to make sure that root and boot are mounted automatically via ```/etc/fstab```.

    /dev/sda1 /boot ext4 defaults 0 2
    /dev/mapper/cryptroot / ext4 errors=remount-ro 0 1

## Setup initramfs

Make sure that kernel can be start by loading the drivers needed to deal with an encrypted device.

- ```/etc/mkinitfs/mkinitfs.conf``` - Features should include **cryptsetup**
- ```/etc/update-extlinux.conf``` - default_kernel_opts should include "cryptroot=/dev/sda2" and "cryptdm=cryptroot"

Rebuild initramfs with the new options.

    apk fix linux-grsec

You can ignore the error from extlinux:

    /boot is device /dev/sda1
    extlinux: cannot open device /dev/sda1

## Write the MBR 

This is related to the bootloader.

    dd bs=440 count=1 conv=notrunc if=/usr/share/syslinux/mbr.bin of=/dev/sda
