--- 
wordpress_id: 395
author_login: pete
layout: post
comments: []

author: Pete
title: Generate 1000 random words using UNIX
published: true
tags: 
- UNIX
- Words
- generate
- bash
date: 2010-10-08 13:06:39 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://www.nationpigeon.com/?p=395
author_url: http://nationpigeon.com
status: publish
---
I need 1000 random words in non-alphabetical order, don't ask why... I just do.&nbsp; So after looking though the '<strong>bin</strong>' folder for a program that might generate these words and found nothing, I decided to head to the internet.&nbsp; This is where I found out about the '<strong>words</strong>' file which is located in '<strong>/usr/dict/words</strong>' this file is used for things like spell checking.&nbsp; Now this contains many many words.&nbsp; This is what I was looking for!

So I quickly did some more google-in for a command that would get me one thousand words, becacse I only needed 1000 words not 25k.&nbsp; I ended up with a program called head, which displays the first few lines of a file. Now all I had to do was pipe a few words into a file.

"<strong>head -n 1000 /usr/dict/words > words.txt</strong>"

I thought I was set!&nbsp; I had 1000 words in a file, check it with 'wc -l' and we're good to go.&nbsp; Only I realised that all the words began with '<strong>a</strong>' ... fail!

After some more google-in I ended up with this little script thing, it works as far as I can tell.
<pre class="brush: bash">#!/bin/bash
for i in {1..1000};

do
  head -$((${RANDOM} % `wc -l < /usr/dict/words` + 1)) /usr/dict/words | tail -1 >> words.txt;
done</pre>

One of the main problems with this is that it not very resource friendly and takes a while to complete.&nbsp; Maybe this would be a fun little program to write, although I am sure there is something like this in the vast blackness of the web.

Hope this helps someone,

Pete
