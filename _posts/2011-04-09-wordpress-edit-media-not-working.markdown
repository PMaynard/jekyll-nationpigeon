--- 
wordpress_id: 539
author_login: pete
layout: post
comments: []

author: Pete
title: Wordpress edit media not working
published: true
tags: 
- PHP
- wordpress
- images
- media
date: 2011-04-09 19:12:34 +01:00
categories: 
- Programming
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=539
author_url: http://nationpigeon.com
status: publish
---
I was attempting to edit an image from my media library, and found that I was unable to crop or resize it.&nbsp; There wasn't even a sign of the image. The only error that the error console gave was "<strong>Image corrupt or truncated</strong>"

I found that if you are to remove all <strong>white space</strong>, after the <strong>closing php</strong> tag from the <strong>functions.php</strong>, it fixes the problem .
<a href="http://core.trac.wordpress.org/ticket/10633">Wordpress Ticket #10633</a>
