--- 
wordpress_id: 381
author_login: pete
layout: post
comments: []

author: Pete
title: Change user Home Directory
published: true
tags: 
- Linux
- Linux commands
- change $HOME Linux
date: 2010-09-06 16:35:09 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://www.nationpigeon.com/?p=381
author_url: http://nationpigeon.com
status: publish
---
I changed my user name on one of my Linux computers that was fine "<strong>usermod -l login-name old-name</strong>".  I though that was that.  Then when I rebooted I found that it was no over! I was unable to login because my home directory was under a diffrent name 0_o "DOOOOOOMM" I instantly thought. Well fear not as this is what I did. 

I found a terminal and ran the command "<strong>export HOME=/path/to/home</strong>" (This works well if you don't have root) or if you do have root "<strong>usermod -d /path/to/new/homedir/ username</strong>" and all was well again.

Also the home directory needs to be only readable by the owner, give this "<strong>chown username:username /path/to/home</strong>" and this "<strong>chmod 644 /path/to/home</strong>"

Hope this helps, 
Pete 
