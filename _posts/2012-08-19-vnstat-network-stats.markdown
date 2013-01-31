--- 
wordpress_id: 1097
author_login: pete
layout: post
comments: []

author: Pete
title: "vnstat: Network Stats"
excerpt: |-
  To gather network statistics about the amount of data your interface is using, have a look at <a href="http://humdi.net/vnstat/" target="_blank">vnstat</a>
  <p style="text-align: center;"><a href="http://nationpigeon.com/vnstat-network-stats"><img class=" aligncenter" title="vnstat example" src="http://humdi.net/vnstat/cgidemo/vnstat_t.png" alt="vnstat example" width="500" height="206" /></a></p>
published: true
tags: 
- Linux
- debian
- stats
- Networking
- FreeBSD
date: 2012-08-19 21:16:37 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=1097
author_url: http://nationpigeon.com
status: publish
---
To gather network statistics for your interfaces, have a look at <a href="http://humdi.net/vnstat/" target="_blank">vnstat</a>

<blockquote>vnStat is a console-based network traffic monitor for Linux and BSD that keeps a log of network traffic for the selected interface(s). It uses the network interface statistics provided by the kernel as information source. This means that vnStat won't actually be sniffing any traffic and also ensures light use of system resources. </blockquote>

<p><a href="http://port22.co.uk/net.png"><img title="vnstat example" src="http://port22.co.uk/net.png" alt="vnstat example" width="500" height="370" /></a></p>

This is how to install on Debian:

<pre class="brush: bash">apt-get -y install vnstat vnstati</pre>

Configure which interface to monitor, this will create a database.  
<pre class="brush: bash">vnstat -u -i eth0</pre>
If you don't do this step you will get the following error:
<pre>Setting up vnstat (1.10-1) ...
Starting vnStat daemon: vnstatdZero database found, exiting.
 failed!</pre>
