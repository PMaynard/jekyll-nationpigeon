--- 
wordpress_id: 1018
author_login: pete
layout: post
comments: []

author: Pete
title: Webserver File Permissions
excerpt: |-
  From what I have found out, the standard permissions should go along the lines of
  <ul>
  	<li>Directories 755</li>
  	<li>PHP 600</li>
  	<li>Everything Else 644</li>
  </ul>
published: true
tags: 
- bash
- apache
- web server
- permissions
date: 2012-08-06 16:23:21 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=1018
author_url: http://nationpigeon.com
status: publish
---
I often forget what the best permission masks are for web data.

From what I have found out, the standard permissions should go along the lines of
<ul>
	<li>Directories 755</li>
	<li>PHP 600</li>
	<li>Everything Else 644</li>
</ul>
Also make sure that all files and folder are owned by the correct users/group.
<pre class="brush: bash">find . -exec chown www-data:www-data  {} \;
find . -type d -exec chmod 755 {} \;
find . -iname \*.php -exec chmod 600 {} \;
find . -type f -exec chmod 644 {} \;</pre>

Yeah I know you should use xargs, due to performance but there are not huge number of files evolved here.
