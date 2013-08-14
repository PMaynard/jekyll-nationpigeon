---
comments: true
date: 2011-01-27 17:47:49
layout: post
slug: debian-remove-unused-dependences
title: Debian remove unused dependences
wordpress_id: 466
categories:
- Linux
tags:
- Debain
- packages
---

After installing and playing around with your Linux distribution you might end up with a load of installed dependences doing nothing but taking up space on your drive.  With a cool little program you can find all packages that can be removed, deborphan.

    
    deborphan --guess-all


This will give you a list of packages that are not used.  You don't need root access for this as it only reads the database.

You can use it like this:

    
    apt-get purge `deborphan --guess-all`
    dpkg --purge `deborphan --guess-all`
    aptitude purge `deborphan --guess-all`
    




[![](/uploads/2011/01/graduate-150x150.jpg)](/uploads/2011/01/graduate.jpg)
