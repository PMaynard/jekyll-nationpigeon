--- 
wordpress_id: 472
author_login: pete
layout: post
comments: []

author: Pete
title: Using grep and wget to download all hyperlinks to .pdf
published: true
tags: 
- Linux
- grep
- pdf
- download
- wget
- bash script
date: 2011-01-28 22:06:14 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/wordpress/?p=472
author_url: http://nationpigeon.com
status: publish
---
I had a site that contained a load of pdfs that I wanted to download, to save me from clicking on each of the pdfs I did some googleing and found how to download all files ending in .pdf.

<pre>
cat index.html | grep -o -e http://[^[:space:]\"]*.pdf | xargs wget
</pre>

and for an even better approach you can make a little bash script that takes the URL as a parameter.

<pre>
#!/bin/sh
url=$1
curl $url | grep -o -e http://[^[:space:]\"]*.pdf | xargs wget
</pre>

Thanks to <a href="http://ubuntuforums.org/showthread.php?t=261161" target="_BLANK">Ubuntu Forums</a>, and <a href="https://encrypted.google.com/search?hl=xx-elmer&client=firefox&hs=xWc&rls={moz%3AdistributionID}%3A{moz%3Alocale}%3A{moz%3Aofficial}&q=grep+all+hyperlinks&btnG=Hunt" target="_BLANK">google</a>.
