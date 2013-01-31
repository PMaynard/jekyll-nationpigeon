--- 
wordpress_id: 597
author_login: pete
layout: post
comments: []

author: Pete
title: Delete files based on last modified date
published: true
tags: 
- Linux
- ls
- find
- touch
date: 2011-10-03 17:02:03 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=597
author_url: http://nationpigeon.com
status: publish
---
First create some files to test with:
<pre>
 touch -d 01/01/2015 newfile
 touch -d 01/01/2009 oldfile
</pre>

Check it worked. using <b>ls -l</b>

<pre>
osaka@rika:~/test$ ls -l
total 0
-rw-r--r-- 1 osaka osaka 0 Jan  1  2015 newfile
-rw-r--r-- 1 osaka osaka 0 Jan  1  2009 oldfile
</pre>

And now delete all files which where last modified over one year ago.

<pre>
find . -mtime +360 -delete
</pre>

The same as;

<pre>
find /home/osaka/test/ -mtime +360 -exec rm '{}' \;
</pre>

Enojy.
