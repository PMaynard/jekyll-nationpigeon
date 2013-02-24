---
comments: true
date: 2011-03-17 14:29:57
layout: post
slug: fixed-missing-images
title: Fixed missing images
wordpress_id: 501
categories:
- Systemless
tags:
- nationpigeon
- site update
---

I have finally fixed the error after moving wordpress out of a "wordpress" folder and into my root directory. Because all the posts that I had made with images went like this "**nationpigeon.com/wordpress/bla.png**" and after I moved all the files the images could not be found.  So a simple hack that I did was create a software link for the folder "wordpress" to the root directory. Using "**ln -s . wordpress**" in my root directory.  The ultimate fix for this would be to do a database wide search for all the posts and update the actual link.

[![Sokka Boy Thinking Cartoon](http://nationpigeon.com/wp-content/uploads/2011/03/sokka-thinking-150x150.jpg)](http://nationpigeon.com/wp-content/uploads/2011/03/sokka-thinking.jpg)

Also the name of this image made me laugh "Sokka Boy Thinking Cartoon" 
