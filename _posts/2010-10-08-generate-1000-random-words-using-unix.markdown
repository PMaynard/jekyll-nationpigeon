---
comments: true
date: 2010-10-08 13:06:39
layout: post
slug: generate-1000-random-words-using-unix
title: Generate 1000 random words using UNIX
wordpress_id: 395
categories:
- Linux
tags:
- bash
- generate
- UNIX
- Words
---

I need 1000 random words in non-alphabetical order, don't ask why... I just do.  So after looking though the '**bin**' folder for a program that might generate these words and found nothing, I decided to head to the internet.  This is where I found out about the '**words**' file which is located in '**/usr/dict/words**' this file is used for things like spell checking.  Now this contains many many words.  This is what I was looking for!

So I quickly did some more google-in for a command that would get me one thousand words, becacse I only needed 1000 words not 25k.  I ended up with a program called head, which displays the first few lines of a file. Now all I had to do was pipe a few words into a file.

"**head -n 1000 /usr/dict/words > words.txt**"

I thought I was set!  I had 1000 words in a file, check it with 'wc -l' and we're good to go.  Only I realised that all the words began with '**a**' ... fail!

After some more google-in I ended up with this little script thing, it works as far as I can tell.

    
    #!/bin/bash
    for i in {1..1000};
    
    do
      head -$((${RANDOM} % `wc -l < /usr/dict/words` + 1)) /usr/dict/words | tail -1 >> words.txt;
    done



One of the main problems with this is that it not very resource friendly and takes a while to complete.  Maybe this would be a fun little program to write, although I am sure there is something like this in the vast blackness of the web.

Hope this helps someone,

Pete
