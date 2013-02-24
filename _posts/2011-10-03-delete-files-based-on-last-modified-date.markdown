---
comments: true
date: 2011-10-03 17:02:03
layout: post
slug: delete-files-based-on-last-modified-date
title: Delete files based on last modified date
wordpress_id: 597
categories:
- Linux
tags:
- find
- Linux
- ls
- touch
---

First create some files to test with:

    
    
     touch -d 01/01/2015 newfile
     touch -d 01/01/2009 oldfile
    



Check it worked. using **ls -l**


    
    
    osaka@rika:~/test$ ls -l
    total 0
    -rw-r--r-- 1 osaka osaka 0 Jan  1  2015 newfile
    -rw-r--r-- 1 osaka osaka 0 Jan  1  2009 oldfile
    



And now delete all files which where last modified over one year ago.


    
    
    find . -mtime +360 -delete
    



The same as;


    
    
    find /home/osaka/test/ -mtime +360 -exec rm '{}' \;
    



Enojy.
