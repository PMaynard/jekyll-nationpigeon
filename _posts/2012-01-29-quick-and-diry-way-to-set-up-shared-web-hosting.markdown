---
comments: true
date: 2012-01-29 21:21:36
layout: post
slug: quick-and-diry-way-to-set-up-shared-web-hosting
title: Quick and diry way to set-up shared web hosting.
wordpress_id: 755
categories:
- Linux
tags:
- debian
- lighttpd
- Linux
- shared web hsoting
---

I have a web server running [lighttpd](http://www.lighttpd.net/) and I have a few sites I want to run from it. This is what I did to enable "shared" web hosting with separate user login.

Fist create a new user for the domain.

    
    useradd newDomain



Add this user to the www-data group

    
    usermod -a -G www-data newDomain



Create the virtual domain in lightys config.

    
    
    $HTTP["host"] =~ "(^|\.)newDomain\.co.uk$" {
            server.document-root = "/var/www/newDomain/"
            server.errorlog = "/var/log/lighttpd/newDomain/error.log"
            accesslog.filename = "/var/log/lighttpd/newDomian/access.log"
            server.error-handler-404 = "/e404.php"
    }
    



Link the web root to the home directory.

    
    ln -s /var/www/newDomain /home/NewDomain/public_html



And the log files.

    
    ln -s /var/log/lighttpd/newDomain /home/NewDomain/logs



Login as the new user and navigate to public_html, and you good to go. 
