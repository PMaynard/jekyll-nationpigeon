--- 
wordpress_id: 560
author_login: pete
layout: post
comments: []

author: Pete
title: Get the first n chars for each line of a file
published: true
tags: 
- Linux
- bash
- cat
date: 2011-06-27 19:29:29 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=560
author_url: http://nationpigeon.com
status: publish
---
<pre>cat file | colrm n</pre>

File's contents:
<pre>
8765 I like eating pie
8956 Sometimes I think I'm a robot
8796 I wonder what being a cat is like
4567 Time for food
4523 Pew Pew pew Space pope8765 I like eating pie
</pre>

<pre>cat file | colrm 4</pre>

Output: 
<pre>
876
895
879
456
452
</pre>

Hope that helps, 
Pete
