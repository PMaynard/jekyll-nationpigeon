---
comments: true
date: 2012-03-21 22:56:35
layout: post
slug: apache-remove-server-signature
title: Apache Remove Server Signature
wordpress_id: 787
categories:
- Linux
tags:
- apache
- Linux
- Security through obscurity
---

Apache's signature is the small block of text identifiying the running version of Apache, OS Running and modules installed.

Example of a server signature:

    
    
    Apache/2.2.16 (Debian) PHP/5.3.10-1 Server at nationpigeon.com Port 80
    



To remove this you need to edit "**/etc/apache2/conf.d/security**" to show "**ServerSignature Off**".

You might want to play around with ServerTokens which limits the amount of infromation returned in the server HTTP header.
