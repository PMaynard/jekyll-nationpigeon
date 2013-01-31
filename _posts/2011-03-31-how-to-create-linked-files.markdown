--- 
wordpress_id: 531
author_login: pete
layout: post
comments: []

author: Pete
title: How to create linked files
published: true
tags: 
- Linux
- bash
- links
- files
date: 2011-03-31 14:47:10 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=531
author_url: http://nationpigeon.com
status: publish
---
A linked file is a file that contains a reference to another file or directory.  There are two types on linkes soft and hard.  A hard link can not access folders on a diffrent volume, where as soft links can.  Heres how to create soft link files.
<pre>ln -s source_file link_name
ln -s /media/Gama Gama</pre>
Links are removed if the source file is removed or has no other files poinint to it.  If you want to remove the link use the <strong>unlink</strong> commnd.
