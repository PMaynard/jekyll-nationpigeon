--- 
wordpress_id: 104
author_login: pete
layout: post
comments: 
- author: John Cook
  date: Tue Feb 10 18:42:18 +0000 2009
  id: 2164
  content: It helped me - thanks!
  date_gmt: Tue Feb 10 18:42:18 +0000 2009
  author_email: jcook793@yahoo.com
  author_url: ""
- author: Pete
  date: Wed Feb 11 11:03:45 +0000 2009
  id: 2203
  content: |-
    Ah good glad it helped, I found another way of fixing it so if it don't work for you give me a shout. 
    
    Pete
  date_gmt: Wed Feb 11 11:03:45 +0000 2009
  author_email: pgm987@gmail.com
  author_url: http://www.nationpigeon.com
- author: Thankful
  date: Mon Feb 23 01:49:44 +0000 2009
  id: 2846
  content: Did the trick for me.  So glad you took the time to post the fix - many thanks!
  date_gmt: Mon Feb 23 01:49:44 +0000 2009
  author_email: paulw4@telus.net
  author_url: ""
- author: Pete
  date: Mon Feb 23 15:01:50 +0000 2009
  id: 2866
  content: ^_^ No problem, thank you for taking the time to comment.
  date_gmt: Mon Feb 23 15:01:50 +0000 2009
  author_email: pgm987@gmail.com
  author_url: http://www.nationpigeon.com
author: Pete
title: How to fix apt-get in Ubuntu 8.10
published: true
tags: 
- Linux
- Ubuntu
- fix
date: 2008-12-02 20:35:12 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://www.nationpigeon.com/archives/104
author_url: http://nationpigeon.com
status: publish
---
If somehow you have broken the APT package handling utility and you get this error:

<code>ed@niobe:~$ sudo apt-get install xchat
E: dpkg was interrupted, you must manually run 'dpkg --configure -a' to correct the problem.</code>

Then when you run&nbsp; 'dpkg --configure -a' you get this error:

<code>ed@niobe:~$ sudo dpkg --configure -a
Processing triggers for libc6 ...
ldconfig deferred processing now taking place
dpkg: ../../src/packages.c:221: process_queue: Assertion `dependtry <= 4' failed.
Aborted</code>

This is how I fixed it.

I went to the <code>Synaptic package manager -> Settings -> Preferences -> File -> Delete cached packaged files</code>

Then <code>Edit -> Fix Broken packages</code>

Hope this helps someone ^_^
