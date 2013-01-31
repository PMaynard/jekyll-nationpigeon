--- 
wordpress_id: 575
author_login: pete
layout: post
comments: []

author: Pete
title: DHCP3-Server failing to start?
published: true
tags: 
- DHCP Server
- Networking
date: 2011-07-31 17:06:38 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=575
author_url: http://nationpigeon.com
status: publish
---
When I was troubleshooting a DHCP Server, I found that in the <b>/etc/dhcp3/dhcpd.conf</b> file someone had declared a subnet with an IP range which was not the same as the server. 

For example, this would not work: 

Interface: <b>192.168.1.1</b>
<pre>subnet 192.168.0.0 netmask 255.255.255.0 {}</pre>

But this would:
<pre>subnet 192.168.1.0 netmask 255.255.255.0 {}</pre>

Because the subnet range is the same as the server.
Hope this helps.
