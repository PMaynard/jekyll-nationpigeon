--- 
wordpress_id: 451
author_login: pete
layout: post
comments: []

author: Pete
title: Inject things into a screen session
published: true
tags: 
- screen
- insert
- bash
- minecraft
date: 2011-01-22 18:52:36 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/wordpress/?p=451
author_url: http://nationpigeon.com
status: publish
---
Say you have a screen session running and you want to have a bash script access and run a command, you can do it with this.
<pre>#!/bin/sh
screen -S minecraft -p 0 -X stuff "`printf "say This is a test.\r"`";
</pre>
This injects the command "say This is a test" to the screen called minecraft.
Found it on the <a href="http://www.minecraftforum.net/viewtopic.php?f=10&amp;t=150374&amp;sid=2330073be475e4b36bf135c3d173e830" target="_BLANK">minecraft forum</a>.
Pete
