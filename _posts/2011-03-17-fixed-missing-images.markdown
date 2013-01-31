--- 
wordpress_id: 501
author_login: pete
layout: post
comments: []

author: Pete
title: Fixed missing images
published: true
tags: 
- site update
- nationpigeon
date: 2011-03-17 14:29:57 +00:00
categories: 
- Systemless
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=501
author_url: http://nationpigeon.com
status: publish
---
I have finally fixed the error after moving wordpress out of a "wordpress" folder and into my root directory. Because all the posts that I had made with images went like this "<strong>nationpigeon.com/wordpress/bla.png</strong>" and after I moved all the files the images could not be found.  So a simple hack that I did was create a software link for the folder "wordpress" to the root directory. Using "<strong>ln -s . wordpress</strong>" in my root directory.  The ultimate fix for this would be to do a database wide search for all the posts and update the actual link.

<a href="http://nationpigeon.com/wp-content/uploads/2011/03/sokka-thinking.jpg"><img src="http://nationpigeon.com/wp-content/uploads/2011/03/sokka-thinking-150x150.jpg" alt="Sokka Boy Thinking Cartoon" title="Sokka Boy Thinking Cartoon" width="150" height="150" class="alignnone size-thumbnail wp-image-502" /></a>

Also the name of this image made me laugh "Sokka Boy Thinking Cartoon" 
