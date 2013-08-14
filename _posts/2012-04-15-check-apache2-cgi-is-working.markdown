---
comments: true
date: 2012-04-15 19:19:43
layout: post
slug: check-apache2-cgi-is-working
title: Check Apache2 CGI is working
wordpress_id: 790
categories:
- Linux
tags:
- Apache2
- CGI
---

Using bash, create the file _test.pl_, and write a simple CGI script which outputs, "It works!".

	echo -e '#!/usr/bin/perl\nprint "Content-type: text/plain\\n\\n";\nprint "It works!\\n";'|sudo tee /usr/lib/cgi-bin/test.pl
    
Give the new file correct permissions ```sudo chmod 755 /usr/lib/cgi-bin/test.pl```

Send a get request to the script, by piping the request to the netcat.

	echo -e "GET /cgi-bin/test.pl HTTP/1.0\n"|nc -q 1 127.0.0.1 80```
