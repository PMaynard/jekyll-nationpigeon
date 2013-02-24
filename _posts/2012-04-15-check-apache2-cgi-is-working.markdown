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

echo -e '#!/usr/bin/perl\nprint "Content-type: text/plain\\n\\n";\nprint "It works!\\n";'|sudo tee /usr/lib/cgi-bin/test.pl
    sudo chmod 755 /usr/lib/cgi-bin/test.pl
    echo -e "GET /cgi-bin/test.pl HTTP/1.0\n"|nc -q 1 127.0.0.1 80
