---
comments: true
date: 2011-04-09 19:12:34
layout: post
slug: wordpress-edit-media-not-working
title: Wordpress edit media not working
wordpress_id: 539
categories:
- Programming
tags:
- images
- media
- PHP
- wordpress
---

I was attempting to edit an image from my media library, and found that I was unable to crop or resize it.  There wasn't even a sign of the image. The only error that the error console gave was "**Image corrupt or truncated**"

I found that if you are to remove all **white space**, after the **closing php** tag from the **functions.php**, it fixes the problem .
[Wordpress Ticket #10633](http://core.trac.wordpress.org/ticket/10633)
