---
comments: true
date: 2011-01-22 18:52:36
layout: post
slug: inject-things-into-a-screen-session
title: Inject things into a screen session
wordpress_id: 451
categories:
- Linux
tags:
- bash
- insert
- minecraft
- screen
---

Say you have a screen session running and you want to have a bash script access and run a command, you can do it with this.

    
    #!/bin/sh
    screen -S minecraft -p 0 -X stuff "`printf "say This is a test.\r"`";
    


This injects the command "say This is a test" to the screen called minecraft.
Found it on the [minecraft forum](http://www.minecraftforum.net/viewtopic.php?f=10&t=150374&sid=2330073be475e4b36bf135c3d173e830).
Pete
