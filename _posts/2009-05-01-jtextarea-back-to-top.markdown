--- 
wordpress_id: 152
author_login: pete
layout: post
comments: []

author: Pete
title: JScrollPane back to top
published: true
tags: 
- Programming
- Java
date: 2009-05-01 13:28:02 +01:00
categories: 
- Programming
author_email: pgm987@gmail.com
wordpress_url: http://www.nationpigeon.com/archives/152
author_url: http://nationpigeon.com
status: publish
---
If you want to make your JScrollPane return to the top once you have enter some text, try this: 

<code>myTextArea.setCaretPosition( 0 )</code>

It places the curser back to zero and in turn makes the JScrollPane go back to the top.
Worked for me, hope this helps someone.
