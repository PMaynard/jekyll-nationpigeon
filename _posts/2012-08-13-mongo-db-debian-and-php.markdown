--- 
wordpress_id: 1026
author_login: pete
layout: post
comments: 
- author: F. Rabbit
  date: Wed Aug 15 14:07:16 +0100 2012
  id: 7555
  content: Do you have a nice link for an introduction to Mongo / getting started?
  date_gmt: Wed Aug 15 14:07:16 +0100 2012
  author_email: flabbyrabbit@gmail.com
  author_url: ""
- author: Pete
  date: Thu Aug 16 10:26:49 +0100 2012
  id: 7568
  content: |-
    Your best bet is the mongo site. http://www.mongodb.org/display/DOCS/Tutorial
    I haven't found anything else, if you do post it here.
  date_gmt: Thu Aug 16 10:26:49 +0100 2012
  author_email: pgm987@gmail.com
  author_url: http://nationpigeon.com
author: Pete
title: Install Mongo DB on Debian with PHP support
published: true
tags: 
- Linux
- Ubuntu
- PHP
- apt-get
- debian
- bash
- MongoDB
- Databse
date: 2012-08-13 18:29:20 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=1026
author_url: http://nationpigeon.com
status: publish
---
Steps to Install MongoDB - This should work with Debian and Ubuntu, with the <a href="http://en.wikipedia.org/wiki/Upstart" target="_blank">upstart</a> init system.
<pre class="brush: bash">sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10 &amp;&amp;
sudo sh -c 'echo ''deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen'' > /etc/apt/sources.list.d/10gen.list' &amp;&amp;
sudo apt-get update &amp;&amp;
sudo apt-get install mongodb-10gen;</pre>
If all goes well you should have a fully working MongoDB. To make sure things are working have a look at <b>/etc/var/log/mongodb/mongodb.log</b>

Try it out with:
<pre class="brush: plain">#mongo
> db.test.save( { a: 1 } )
> db.test.find()
{ "_id" : ObjectId("5028ef81799a8e44dd0cd654"), "a" : 1 }
{ "_id" : ObjectId("5028f2b13579fd22f1b63d91"), "a" : 1 }</pre>
Now go have a look at a nice Tutorial for <a href="http://www.mongodb.org/display/DOCS/Tutorial/" target="_blank">MongoDB</a>
<h1>MongoDB and PHP</h1>
We need to install the MongoDB driver for PHP before they can communicate.
<pre class="brush: bash">sudo apt-get install php5-dev php5-cli php-pear &amp;&amp; # Get pecl working.
sudo pecl install mongo # Install the PHP Mongo Driver.</pre>
Now show PHP the extension by adding <strong>extension=mongo.so</strong> to your php.ini and restart your web server.

[caption id="attachment_1084" align="aligncenter" width="618"]<img class="size-full wp-image-1084 " title="MongoPHP" src="http://nationpigeon.com/wp-content/uploads/2012/08/MongoPHP.jpg" alt="MongoDB extension as seen from phpinfo()" width="618" height="409" /> MongoDB extension as seen from phpinfo()[/caption]
<h1>Reference</h1>
<a href="http://www.mongodb.org/display/DOCS/PHP+Language+Center" target="_blank">http://www.mongodb.org/display/DOCS/PHP+Language+Center</a>
<a href="http://www.php.net/manual/en/mongo.tutorial.php" target="_blank">http://www.php.net/manual/en/mongo.tutorial.php</a>
