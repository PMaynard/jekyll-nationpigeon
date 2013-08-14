---
comments: true
date: 2010-09-13 21:32:31
layout: post
slug: ubuntu-menu-left-to-right
title: Ubuntu menu left to right
wordpress_id: 389
categories:
- Linux
tags:
- config
- maid
- menu
- Ubuntu
---

In the latest versions of Ubuntu, they tend to have the default theme set to have the close, minimize and maximize options on the left hand side of the screen.  

To change this simply go to the gconf-editor (Alt + F2 - "**gconf-editor**") 

Then change **apps->metacity->general->button_layout** to have the colon at the front instead of the end.  
You might want to re-order the placement of the buttons as well.
