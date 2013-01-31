--- 
wordpress_id: 328
author_login: pete
layout: post
comments: []

author: Pete
title: "The watch command "
published: true
tags: 
- Linux commands
- watch
- display output update
date: 2010-08-01 19:54:40 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://www.nationpigeon.com/?p=328
author_url: http://nationpigeon.com
status: publish
---
A cool little Linux command that I found out about called "watch".  It runs a command repeatedly displaying its output and errors (the first screenfull).  it will run the command every 2 seconds you can change this using the -n parameter to specify another interval.  Again with thanks to the man pages and good old google.

To see what happens try this:  <strong>watch -n 0  procinfo</strong>
