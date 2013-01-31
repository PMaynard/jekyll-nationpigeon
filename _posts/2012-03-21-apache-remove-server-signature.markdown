--- 
wordpress_id: 787
author_login: pete
layout: post
comments: []

author: Pete
title: Apache Remove Server Signature
published: true
tags: 
- Linux
- apache
- Security through obscurity
date: 2012-03-21 22:56:35 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=787
author_url: http://nationpigeon.com
status: publish
---
Apache's signature is the small block of text identifiying the running version of Apache, OS Running and modules installed.

Example of a server signature:
<pre>
Apache/2.2.16 (Debian) PHP/5.3.10-1 Server at nationpigeon.com Port 80
</pre>

To remove this you need to edit "<b>/etc/apache2/conf.d/security</b>" to show "<b>ServerSignature Off</b>".

You might want to play around with ServerTokens which limits the amount of infromation returned in the server HTTP header.
