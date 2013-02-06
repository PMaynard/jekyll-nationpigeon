--- 
wordpress_id: 1135
author_login: pete
layout: post
comments: []

author: Pete
title: goomwwm startup applications and background
published: true
tags: 
- goomwwm
date: 2013-01-24 17:16:09 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=1135
author_url: http://nationpigeon.com
status: publish
---
I've been using Goomwwm on and off, but seeing as it's post-new-yearness I'm going to give it a try full time.

To set the background, I decided to use [feh](http://feh.finalrewind.org).

Simply create a .goomwwmrc in your home directory.

    # Background
    exec /usr/bin/feh --bg-center /home/osaka/wallpaper.jpg
    
    # Sart up applications
    exec /usr/bin/lxpanel


That sets the background to an image in my home directory and start lxpanel up once goomwwm has started.

From here you should be able to work out how to start other applications. Simply prefix the application location with the command 'exec'
