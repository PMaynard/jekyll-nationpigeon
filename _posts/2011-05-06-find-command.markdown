---
comments: true
date: 2011-05-06 15:43:06
layout: post
slug: find-command
title: Find Command
wordpress_id: 477
categories:
- Linux
tags:
- bash
- commands
- find
- Linux
---

The find command is  very useful for organizing your files and folders, or in combination with bash scripting. For example I had an mp3 player which would only play mp3s that were not inside a directory.  Now all my music is located inside sub-directories, so I could spend most of my day moving them out, or I could use the find command.

    
    find . -iname \*.mp3 -type f -exec cp {} ./local/ \;


This line here will search every file and folder in the current directory, and if the file ends in "**.mp3**" then it will be copied to a folder called "**local**",

A break down of the command is like this.
**-iname** - Base of the file name with all leading directories removed.
**-type f** - The file is of type "**regular file**", for directories the flag is "**d**".
**-exec** - This executes a command if 0 status is returned, if there is a file,
**cp {} ./local/ \;** - "**cp**" is the command to be run. "**{}**" is replaced by the current file name being processed, "**\;**" terminates the command.

Hope this helps,

[![](http://nationpigeon.com/wp-content/uploads/2011/05/Miyafuji-Chibi-150x150.jpg)](http://nationpigeon.com/wp-content/uploads/2011/05/Miyafuji-Chibi.jpg)

[Original Location](http://i374.photobucket.com/albums/oo187/theoneandonlyhaku/Pantsu%20Witches/d99cb17ec8bd40e3c0d452f2176142d8.jpg)
