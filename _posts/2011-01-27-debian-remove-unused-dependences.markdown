--- 
wordpress_id: 466
author_login: pete
layout: post
comments: []

author: Pete
title: Debian remove unused dependences
published: true
tags: 
- Debain
- packages
date: 2011-01-27 17:47:49 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/wordpress/?p=466
author_url: http://nationpigeon.com
status: publish
---
After installing and playing around with your Linux distribution you might end up with a load of installed dependences doing nothing but taking up space on your drive.  With a cool little program you can find all packages that can be removed, deborphan.
<pre>deborphan --guess-all</pre>
This will give you a list of packages that are not used.  You don't need root access for this as it only reads the database.

You can use it like this:
<pre>apt-get purge `deborphan --guess-all`
dpkg --purge `deborphan --guess-all`
aptitude purge `deborphan --guess-all`
</pre>
<p style="text-align: center;"><a href="http://nationpigeon.com/wordpress/wp-content/uploads/2011/01/graduate.jpg"><img class="aligncenter size-thumbnail wp-image-467" title="Tada" src="http://nationpigeon.com/wordpress/wp-content/uploads/2011/01/graduate-150x150.jpg" alt="" width="150" height="150" /></a></p>
