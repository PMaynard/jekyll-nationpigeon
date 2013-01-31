--- 
wordpress_id: 544
author_login: pete
layout: post
comments: []

author: Pete
title: GRUB Quick Tips
published: true
tags: 
- GRUB
- boot
- MBR
date: 2011-06-20 19:40:59 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=544
author_url: http://nationpigeon.com
status: publish
---
Some tips when GRUB gets angry and goes wrong, after/during an install. 

Use this command to locate grub stage 1:
<pre>find /boot/grub/stage1</pre>

Set the GRUB root to the location of stage 1:
<pre>root (hd0,0)</pre>

Now that we have found the GRUB on the hard drive, load the config file and your away.
<pre>configfile /boot/grub/grub.conf</pre>

This is more of a note to my self, but good luck.
Pete
