---
comments: true
date: 2011-07-31 17:06:38
layout: post
slug: dhcp3-server-failing-to-start
title: DHCP3-Server failing to start?
wordpress_id: 575
categories:
- Linux
tags:
- DHCP Server
- Networking
---

When I was troubleshooting a DHCP Server, I found that in the **/etc/dhcp3/dhcpd.conf** file someone had declared a subnet with an IP range which was not the same as the server. 

For example, this would not work: 

Interface: **192.168.1.1**

    
    subnet 192.168.0.0 netmask 255.255.255.0 {}



But this would:

    
    subnet 192.168.1.0 netmask 255.255.255.0 {}



Because the subnet range is the same as the server.
Hope this helps.
