---
comments: true
date: 2011-06-27 19:29:29
layout: post
slug: get-the-first-n-chars-for-each-line-of-a-file
title: Get the first n chars for each line of a file
wordpress_id: 560
categories:
- Linux
tags:
- bash
- cat
- Linux
---

```cat file | colrm n```

File's contents:
    
    8765 I like eating pie
    8956 Sometimes I think I'm a robot
    8796 I wonder what being a cat is like
    4567 Time for food
    4523 Pew Pew pew Space pope8765 I like eating pie


```cat file | colrm 4```

Output:     
    
    876
    895
    879
    456
    452
