---
comments: true
date: 2012-03-04 23:51:46
layout: post
slug: clone-a-harddrive-linux
title: Clone a Harddrive Linux
wordpress_id: 783
categories:
- Linux
tags:
- backup
- clone
- dd
- hard drive
- Linux
- Restore
---

Using dd you can make a bit for bit clone of a harddrive/partition. 

dd takes two parameters. if, the source and of, the destination.


    
    dd if=/dev/sda of=~/backup.img



This will make a copy of the entire disk, if you were to put sda1 you'd get the first partition. 

Make sure to only run these commands when there is no activitiy on the disk. If you are using LVM you can make a snapshot of the data and run it against that.

Once the backup is complete you can compress it and store it like a normal file.

To restore the data you simply reverse the arguments.


    
    dd if=~/backup.img of=/dev/sda
