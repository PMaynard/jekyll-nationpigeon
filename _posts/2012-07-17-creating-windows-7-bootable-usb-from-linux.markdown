---
comments: true
date: 2012-07-17 16:41:26
layout: post
slug: creating-windows-7-bootable-usb-from-linux
title: Creating Windows 7 bootable USB from Linux
wordpress_id: 852
categories:
- Linux
- Windows
tags:
- Bootable
- Linux
- USB
- Widnwos 7
- Windows
---

Using [GParted](http://gparted.sourceforge.net/), or another tool, format the USB to NTFS and make the partition bootable.

As root, mount your Windows ISO.

    
    
    mount /home/osaka/en_windows_7.iso /mnt -o loop
    



Then copy the contents to the USB.

    
    
    cp -rv /mnt/* /media/USB
    sync # Flush file system buffers
    



Install the Windows boot loader to the USB.

    
    
    ms-sys -7 /dev/sdX
    



You may need to download and compile ms-sys. 

    
    
    tar xvf ms-sys-2.X.tar.gz
    cd ms-sys
    make
    make install # As root
    



Done, reboot with your USB and boot into Windows\*...

**Links**
[ms-sys homepage](http://ms-sys.sourceforge.net/)

\*Still not sure why anyone would want to install Windows :P
