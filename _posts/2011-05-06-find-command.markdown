--- 
wordpress_id: 477
author_login: pete
layout: post
comments: []

author: Pete
title: Find Command
published: true
tags: 
- Linux
- bash
- find
- commands
date: 2011-05-06 15:43:06 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/wordpress/?p=477
author_url: http://nationpigeon.com
status: publish
---
The find command is  very useful for organizing your files and folders, or in combination with bash scripting. For example I had an mp3 player which would only play mp3s that were not inside a directory.&nbsp; Now all my music is located inside sub-directories, so I could spend most of my day moving them out, or I could use the find command.
<pre>find . -iname \*.mp3 -type f -exec cp {} ./local/ \;</pre>
This line here will search every file and folder in the current directory, and if the file ends in "<strong>.mp3</strong>" then it will be copied to a folder called "<strong>local</strong>",

A break down of the command is like this.
<strong>-iname</strong> - Base of the file name with all leading directories removed.
<strong>-type f</strong> - The file is of type "<strong>regular file</strong>", for directories the flag is "<strong>d</strong>".
<strong>-exec</strong> - This executes a command if 0 status is returned, if there is a file,
<strong>cp {} ./local/ \;</strong> - "<strong>cp</strong>" is the command to be run. "<strong>{}</strong>" is replaced by the current file name being processed, "<strong>\;</strong>" terminates the command.

Hope this helps,

<a href="http://nationpigeon.com/wp-content/uploads/2011/05/Miyafuji-Chibi.jpg"><img class="size-thumbnail wp-image-552 alignnone" title="Miyafuji-Chibi" src="http://nationpigeon.com/wp-content/uploads/2011/05/Miyafuji-Chibi-150x150.jpg" alt="" /></a>

<a href="http://i374.photobucket.com/albums/oo187/theoneandonlyhaku/Pantsu%20Witches/d99cb17ec8bd40e3c0d452f2176142d8.jpg" target="_blank">Original Location</a>
