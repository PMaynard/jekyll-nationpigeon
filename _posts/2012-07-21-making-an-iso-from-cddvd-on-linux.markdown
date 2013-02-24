---
comments: true
date: 2012-07-21 10:50:05
layout: post
slug: making-an-iso-from-cddvd-on-linux
title: Making an ISO from CD/DVD on Linux
wordpress_id: 865
categories:
- Linux
tags:
- CD
- dd
- DVD
- ISO
- Linux
---

To create an ISO file from a physical DVD/CD/Floppy/USB/Anything. Use the command '**dd**' this creates a bit for bit copy of the original file/partition/device. 

dd takes two parameters these are **if** - input file and **of** - output file.

In this case the input file will be the CD and the output file will be the ISO.


    
    
    dd if=/dev/sr0 of=/home/osaka/cd.iso
    



My optical drive is located at /dev/sr0. I found this out my automaticly mounting the disk and using **mount** to view all mounted devices.


    
    
    osaka@computer ~ $ mount
    ...
    /dev/sr0 on /media/DRIVER type iso9660 (ro,nosuid,nodev,uid=1000,gid=1000,iocharset=utf8,mode=0400,dmode=0500,uhelper=udisks)
    



If the disk you are copying is large then it might take a while, during which you will not see any output, to make sure it is working monitor the size of the newly created ISO file.


    
    
    osaka@computer ~ $ dd if=/dev/sr0 of=/home/osaka/serial-drivers.iso
    2400+0 records in
    2400+0 records out
    1228800 bytes (1.2 MB) copied, 1.84111 s, 667 kB/s
    



You can then mount the ISO with:

    
    
    mount /home/osaka/serial-drivers.iso /mnt -o loop
    



You might want to look up **mkisofs** which does the same but for directories.

    
    
    mkisofs -o /homw/osaka/folder.iso /radnom/dir/
    
