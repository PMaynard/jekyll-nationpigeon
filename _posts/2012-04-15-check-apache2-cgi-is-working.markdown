--- 
wordpress_id: 790
author_login: pete
layout: post
comments: []

author: Pete
title: Check Apache2 CGI is working
published: true
tags: 
- Apache2
- CGI
date: 2012-04-15 19:19:43 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=790
author_url: http://nationpigeon.com
status: publish
---
<pre>echo -e '#!/usr/bin/perl\nprint "Content-type: text/plain\\n\\n";\nprint "It works!\\n";'|sudo tee /usr/lib/cgi-bin/test.pl
sudo chmod 755 /usr/lib/cgi-bin/test.pl
echo -e "GET /cgi-bin/test.pl HTTP/1.0\n"|nc -q 1 127.0.0.1 80</pre>
