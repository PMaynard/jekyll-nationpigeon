---
comments: true
date: 2011-03-31 14:47:10
layout: post
slug: how-to-create-linked-files
title: How to create linked files
wordpress_id: 531
categories:
- Linux
tags:
- bash
- files
- links
- Linux
---

A linked file is a file that contains a reference to another file or directory.  There are two types on linkes soft and hard.  A hard link can not access folders on a diffrent volume, where as soft links can.  Heres how to create soft link files.

    
    ln -s source_file link_name
    ln -s /media/Gama Gama


Links are removed if the source file is removed or has no other files poinint to it.  If you want to remove the link use the **unlink** commnd.
