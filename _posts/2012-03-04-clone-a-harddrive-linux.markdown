--- 
wordpress_id: 783
author_login: pete
layout: post
comments: []

author: Pete
title: Clone a Harddrive Linux
published: true
tags: 
- Linux
- backup
- Restore
- dd
- clone
- hard drive
date: 2012-03-04 23:51:46 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=783
author_url: http://nationpigeon.com
status: publish
---
Using dd you can make a bit for bit clone of a harddrive/partition. 

dd takes two parameters. if, the source and of, the destination.

<pre>dd if=/dev/sda of=~/backup.img</pre>

This will make a copy of the entire disk, if you were to put sda1 you'd get the first partition. 

Make sure to only run these commands when there is no activitiy on the disk. If you are using LVM you can make a snapshot of the data and run it against that.

Once the backup is complete you can compress it and store it like a normal file.

To restore the data you simply reverse the arguments.

<pre>dd if=~/backup.img of=/dev/sda</pre>
