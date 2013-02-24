---
comments: true
date: 2012-07-18 09:40:01
layout: post
slug: restore-grub-after-windows-install
title: Restore GRUB after Windows install
wordpress_id: 858
categories:
- Linux
- Windows
tags:
- boot
- GRUB
- Linux
- MBR
- Windows
---

Boot up into a Live Linux Image.

Mount your old Linux Install, and use chroot to take control of it.

    
    
    mount /dev/sdc1 /mnt
    chroot /mnt
    



You will get **grub-probe: error: cannot find a device for / (is /dev mounted?).** if you don't mount you devices, before attempting to install GRUB.

So mount all devices.

    
    
    mount proc
    mount sys
    mount dev
    



Force GRUB to update it's configuration file, and re install it back to the MBR.

    
    
    update-grub
    grub-install /dev/sdc
    



When installing GRUB you need to make sure that you don't specify a number like you did when mounting, otherwise it will be installed on the partition.

Reboot and your done.

