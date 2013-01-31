--- 
wordpress_id: 248
author_login: pete
layout: post
comments: []

author: Pete
title: Frame rate independent movement in PyGame
published: true
tags: 
- Programming
- PyGame
- Python
- game dev
date: 2009-08-19 15:04:26 +01:00
categories: 
- Programming
author_email: pgm987@gmail.com
wordpress_url: http://www.nationpigeon.com/archives/248
author_url: http://nationpigeon.com
status: publish
---
To make sure that your game runs the same on all computers that can handle it. You will need to make sure that your actions are independent from the frame rate. To do this in python you can put this code above the game loop

<code>framerate = 60 #frames per second
clock = pygame.time.Clock()</code>

and then at the end of your game loop put

<code>timepassed = clock.tick(framerate)</code>

This should help with makeing the game more playable ^_^
Hope this helps.
