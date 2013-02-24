---
comments: true
date: 2010-09-06 16:35:09
layout: post
slug: change-user-home-directory
title: Change user Home Directory
wordpress_id: 381
categories:
- Linux
tags:
- change $HOME Linux
- Linux
- Linux commands
---

I changed my user name on one of my Linux computers that was fine "**usermod -l login-name old-name**".  I though that was that.  Then when I rebooted I found that it was no over! I was unable to login because my home directory was under a diffrent name 0_o "DOOOOOOMM" I instantly thought. Well fear not as this is what I did. 

I found a terminal and ran the command "**export HOME=/path/to/home**" (This works well if you don't have root) or if you do have root "**usermod -d /path/to/new/homedir/ username**" and all was well again.

Also the home directory needs to be only readable by the owner, give this "**chown username:username /path/to/home**" and this "**chmod 644 /path/to/home**"

Hope this helps, 
Pete 
