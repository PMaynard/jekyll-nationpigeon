---
comments: true
date: 2012-08-19 21:16:37
layout: post
slug: vnstat-network-stats
title: 'vnstat: Network Stats'
wordpress_id: 1097
categories:
- Linux
tags:
- debian
- FreeBSD
- Linux
- Networking
- stats
---

To gather network statistics for your interfaces, have a look at [vnstat](http://humdi.net/vnstat/)



> vnStat is a console-based network traffic monitor for Linux and BSD that keeps a log of network traffic for the selected interface(s). It uses the network interface statistics provided by the kernel as information source. This means that vnStat won't actually be sniffing any traffic and also ensures light use of system resources. 

![vnstat example](/images/posts/net.png)

This is how to install on Debian:

    apt-get -y install vnstat vnstati

Configure which interface to monitor, this will create a database.  
    
    vnstat -u -i eth0


If you don't do this step you will get the following error:
    
    Setting up vnstat (1.10-1) ...
    Starting vnStat daemon: vnstatdZero database found, exiting.
     failed!

To generate the above example image use: 

	vnstati -s -i eth0 -o net.png
