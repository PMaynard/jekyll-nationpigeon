---
comments: true
date: 2010-08-01 19:54:40
layout: post
slug: watch-command
title: 'The watch command '
wordpress_id: 328
categories:
- Linux
tags:
- display output update
- Linux commands
- watch
---

A cool little Linux command that I found out about called "watch".  It runs a command repeatedly displaying its output and errors (the first screenfull).  it will run the command every 2 seconds you can change this using the -n parameter to specify another interval.  Again with thanks to the man pages and good old google.

To see what happens try this:  **watch -n 0  procinfo**
