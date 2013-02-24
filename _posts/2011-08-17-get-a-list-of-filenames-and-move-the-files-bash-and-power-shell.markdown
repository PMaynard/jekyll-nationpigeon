---
comments: true
date: 2011-08-17 20:06:19
layout: post
slug: get-a-list-of-filenames-and-move-the-files-bash-and-power-shell
title: Get a list of filenames and move the files Bash and Power Shell
wordpress_id: 591
categories:
- Linux
- Windows
tags:
- bash
- Windows Power Shell
---

Both these scripts do the same thing, they strip a log file down to the filename and then move each file up a directory.

    
    ...
    C:\Random\Directory\n\chars\long\filename.xml
    ...


BASH

    
    cat 15\ August\ 2011\ Less.log | cut -c 113-152 > fileNames
    for i in `cat fileNames`; do mv -v "$i" ../$i; done


WINDOWS

    
    gc '.\15 August 2011 Less.log' |% {$_.Substring(56,20)} > fileNames
    gc .\filenames | ForEach-Object {mv -v $_ ../$_}


Just my little note, from when I was playing with power shell.
More than likely more to come >.>
