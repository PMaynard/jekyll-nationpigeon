--- 
wordpress_id: 21
author_login: pete
layout: post
comments: []

author: Pete
title: Progamming Comments
published: true
tags: []

date: 2007-12-09 11:48:33 +00:00
categories: 
- Programming
author_email: pgm987@gmail.com
wordpress_url: http://www.nationpigeon.com/archives/21
author_url: http://nationpigeon.com
status: publish
---
It is good practice to include lots of comments in your code so that when you or someone else comes back and looks at the code you/they will understand what it is meant to do.

A comment will be ignored by the compiler, this means that anything in between the comment tags will not become a program. (Makes any scene?)

Normally there are two ways to write comments, one is a single line, and one is a multi line comment.  There names explain what they mean.

So in Java a single line comment will look like this:
<pre>// Comment Text</pre>
And a multi line comment will look like this:
<pre>/*</pre>
<pre>More than one line</pre>
<pre>See!*/</pre>
And in C++ a single line comment will look like this:
<pre>// Comment Text</pre>
And a multi line comment will look like this:
<pre>/*</pre>
<pre>More than one line</pre>
<pre>See!*/</pre>
And in python a singe line comment is done like is:
<pre># Comment text</pre>
And a multi lined comment will go like this:
<pre>
" " " this is a multi line comment

  which spawns many lines

" " "</pre>
As you can see Java and C++ have the same way of creating comments but Python has a different way just to let you know that all languages do not have th same way of commenting text.

<a href="http://mail.python.org/pipermail/tutor/2004-February/028432.html">Useful Python Commenting Information</a>

And for a small side note here is how to write comments in HTML and PHP.

HTML
<pre><!-- Comment text in here --></pre>
PHP
<pre>// Comment text in here - Single line</pre>
<pre>
/* Comment text in here,

many lines

*/</pre>
Hope this helps, Pete

<strong>If you liked this and are a nice person would you like to donate to my Stargate fund?</strong>

<form action="https://www.paypal.com/cgi-bin/webscr" method="post"> <input name="cmd" value="_s-xclick" type="hidden" /> <input src="https://www.paypal.com/en_GB/i/btn/btn_donate_SM.gif" name="submit" alt="Make payments with PayPal - it's fast, free and secure!" border="0" type="image" /> <img src="https://www.paypal.com/en_GB/i/scr/pixel.gif" border="0" height="1" width="1" /> <input name="encrypted" value="-----BEGIN PKCS7-----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-----END PKCS7-----<br></input>" type="hidden" /> </form>
