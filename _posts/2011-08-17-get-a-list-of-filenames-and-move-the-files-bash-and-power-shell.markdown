--- 
wordpress_id: 591
author_login: pete
layout: post
comments: []

author: Pete
title: Get a list of filenames and move the files Bash and Power Shell
published: true
tags: 
- bash
- Windows Power Shell
date: 2011-08-17 20:06:19 +01:00
categories: 
- Linux
- Windows
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=591
author_url: http://nationpigeon.com
status: publish
---
Both these scripts do the same thing, they strip a log file down to the filename and then move each file up a directory.
<pre>...
C:\Random\Directory\n\chars\long\filename.xml
...</pre>
BASH
<pre>cat 15\ August\ 2011\ Less.log | cut -c 113-152 > fileNames
for i in `cat fileNames`; do mv -v "$i" ../$i; done</pre>
WINDOWS
<pre>gc '.\15 August 2011 Less.log' |% {$_.Substring(56,20)} > fileNames
gc .\filenames | ForEach-Object {mv -v $_ ../$_}</pre>
Just my little note, from when I was playing with power shell.
More than likely more to come >.>
