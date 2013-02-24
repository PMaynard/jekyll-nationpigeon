---
comments: true
date: 2009-08-19 15:04:26
layout: post
slug: independent-action-frame-rate-in-pygame
title: Frame rate independent movement in PyGame
wordpress_id: 248
categories:
- Programming
tags:
- game dev
- Programming
- PyGame
- Python
---

To make sure that your game runs the same on all computers that can handle it. You will need to make sure that your actions are independent from the frame rate. To do this in python you can put this code above the game loop

`framerate = 60 #frames per second
clock = pygame.time.Clock()`

and then at the end of your game loop put

`timepassed = clock.tick(framerate)`

This should help with makeing the game more playable ^_^
Hope this helps.
