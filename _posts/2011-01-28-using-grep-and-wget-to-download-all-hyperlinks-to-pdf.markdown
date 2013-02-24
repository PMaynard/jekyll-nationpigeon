---
comments: true
date: 2011-01-28 22:06:14
layout: post
slug: using-grep-and-wget-to-download-all-hyperlinks-to-pdf
title: Using grep and wget to download all hyperlinks to .pdf
wordpress_id: 472
categories:
- Linux
tags:
- bash script
- download
- grep
- Linux
- pdf
- wget
---

I had a site that contained a load of pdfs that I wanted to download, to save me from clicking on each of the pdfs I did some googleing and found how to download all files ending in .pdf.


    
    
    cat index.html | grep -o -e http://[^[:space:]\"]*.pdf | xargs wget
    



and for an even better approach you can make a little bash script that takes the URL as a parameter.


    
    
    #!/bin/sh
    url=$1
    curl $url | grep -o -e http://[^[:space:]\"]*.pdf | xargs wget
    



Thanks to [Ubuntu Forums](http://ubuntuforums.org/showthread.php?t=261161), and [google](https://encrypted.google.com/search?hl=xx-elmer&client=firefox&hs=xWc&rls={moz%3AdistributionID}%3A{moz%3Alocale}%3A{moz%3Aofficial}&q=grep+all+hyperlinks&btnG=Hunt).
