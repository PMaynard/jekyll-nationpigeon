---
comments: true
date: 2011-06-20 19:40:59
layout: post
slug: grub-quick-tips
title: GRUB Quick Tips
wordpress_id: 544
categories:
- Linux
tags:
- boot
- GRUB
- MBR
---

Some tips when GRUB gets angry and goes wrong, after/during an install. 

Use this command to locate grub stage 1:

    
    find /boot/grub/stage1



Set the GRUB root to the location of stage 1:

    
    root (hd0,0)



Now that we have found the GRUB on the hard drive, load the config file and your away.

    
    configfile /boot/grub/grub.conf



This is more of a note to my self, but good luck.
Pete

