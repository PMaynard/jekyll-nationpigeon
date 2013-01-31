--- 
wordpress_id: 865
author_login: pete
layout: post
comments: []

author: Pete
title: Making an ISO from CD/DVD on Linux
published: true
tags: 
- DVD
- Linux
- dd
- ISO
- CD
date: 2012-07-21 10:50:05 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=865
author_url: http://nationpigeon.com
status: publish
---
To create an ISO file from a physical DVD/CD/Floppy/USB/Anything. Use the command '<b>dd</b>' this creates a bit for bit copy of the original file/partition/device. 

dd takes two parameters these are <b>if</b> - input file and <b>of</b> - output file.

In this case the input file will be the CD and the output file will be the ISO.

<pre class="brush: shell">
dd if=/dev/sr0 of=/home/osaka/cd.iso
</pre>

My optical drive is located at /dev/sr0. I found this out my automaticly mounting the disk and using <b>mount</b> to view all mounted devices.

<pre class="brush: shell">
osaka@computer ~ $ mount
...
/dev/sr0 on /media/DRIVER type iso9660 (ro,nosuid,nodev,uid=1000,gid=1000,iocharset=utf8,mode=0400,dmode=0500,uhelper=udisks)
</pre>

If the disk you are copying is large then it might take a while, during which you will not see any output, to make sure it is working monitor the size of the newly created ISO file.

<pre class="brush: shell">
osaka@computer ~ $ dd if=/dev/sr0 of=/home/osaka/serial-drivers.iso
2400+0 records in
2400+0 records out
1228800 bytes (1.2 MB) copied, 1.84111 s, 667 kB/s
</pre>

You can then mount the ISO with:
<pre class="brush: shell">
mount /home/osaka/serial-drivers.iso /mnt -o loop
</pre>

You might want to look up <b>mkisofs</b> which does the same but for directories.
<pre class="brush: shell">
mkisofs -o /homw/osaka/folder.iso /radnom/dir/
</pre>
