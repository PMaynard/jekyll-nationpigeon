---
comments: true
date: 2011-08-06 19:57:40
layout: post
slug: virtualbox-boot-a-virtual-machine-from-a-usb
title: 'VirtualBox: Boot a virtual machine from a USB'
wordpress_id: 589
categories:
- Linux
tags:
- USB Boot
- Virtual Box
- Virtual Machine
---

I wanted to install some software on to an OS which was installed on a USB flash drive, so I created a virtual machine that booted up of the USB drive.

I found it needed root permissions, and it is probably a good idea to un-mount the device before hand.


    
    
    VBoxManage internalcommands createrawvmdk -filename ./HardDisks/USB-test.vmdk -rawdisk /dev/sdd
    



Once you've done this, you then need to set this new virtual hard drive as a virtual machines hard drive.

This might work with booting from hard drives e.g dual boot.
Good luck.

