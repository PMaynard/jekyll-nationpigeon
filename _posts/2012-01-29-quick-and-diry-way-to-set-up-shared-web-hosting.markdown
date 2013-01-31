--- 
wordpress_id: 755
author_login: pete
layout: post
comments: []

author: Pete
title: Quick and diry way to set-up shared web hosting.
published: true
tags: 
- Linux
- debian
- lighttpd
- shared web hsoting
date: 2012-01-29 21:21:36 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=755
author_url: http://nationpigeon.com
status: publish
---
I have a web server running <a href="http://www.lighttpd.net/" target="_BLANK">lighttpd</a> and I have a few sites I want to run from it. This is what I did to enable "shared" web hosting with separate user login.

Fist create a new user for the domain.
<pre>useradd newDomain</pre>

Add this user to the www-data group
<pre>usermod -a -G www-data newDomain</pre>

Create the virtual domain in lightys config.
<pre>
$HTTP["host"] =~ "(^|\.)newDomain\.co.uk$" {
        server.document-root = "/var/www/newDomain/"
        server.errorlog = "/var/log/lighttpd/newDomain/error.log"
        accesslog.filename = "/var/log/lighttpd/newDomian/access.log"
        server.error-handler-404 = "/e404.php"
}
</pre>

Link the web root to the home directory.
<pre>ln -s /var/www/newDomain /home/NewDomain/public_html</pre>

And the log files.
<pre>ln -s /var/log/lighttpd/newDomain /home/NewDomain/logs</pre>

Login as the new user and navigate to public_html, and you good to go. 
