--- 
wordpress_id: 589
author_login: pete
layout: post
comments: []

author: Pete
title: "VirtualBox: Boot a virtual machine from a USB"
published: true
tags: 
- Virtual Machine
- Virtual Box
- USB Boot
date: 2011-08-06 19:57:40 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=589
author_url: http://nationpigeon.com
status: publish
---
I wanted to install some software on to an OS which was installed on a USB flash drive, so I created a virtual machine that booted up of the USB drive.

I found it needed root permissions, and it is probably a good idea to un-mount the device before hand.

<pre>
VBoxManage internalcommands createrawvmdk -filename ./HardDisks/USB-test.vmdk -rawdisk /dev/sdd
</pre>

Once you've done this, you then need to set this new virtual hard drive as a virtual machines hard drive.

This might work with booting from hard drives e.g dual boot.
Good luck.
