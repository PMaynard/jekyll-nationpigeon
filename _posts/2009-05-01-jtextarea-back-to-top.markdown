---
comments: true
date: 2009-05-01 13:28:02
layout: post
slug: jtextarea-back-to-top
title: JScrollPane back to top
wordpress_id: 152
categories:
- Programming
tags:
- Java
- Programming
---

If you want to make your JScrollPane return to the top once you have enter some text, try this: 

`myTextArea.setCaretPosition( 0 )`

It places the curser back to zero and in turn makes the JScrollPane go back to the top.
Worked for me, hope this helps someone.
