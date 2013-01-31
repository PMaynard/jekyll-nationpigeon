--- 
wordpress_id: 454
author_login: pete
layout: post
comments: []

author: Pete
title: iptables reroute to another IP
published: true
tags: 
- iptables
- ip redirection
date: 2011-01-22 20:22:08 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/wordpress/?p=454
author_url: http://nationpigeon.com
status: publish
---
This is how I re-routed all traffic through port 25565 to another IP address.
<pre>echo "1" > /proc/sys/net/ipv4/ip_forward
iptables -t nat -A PREROUTING -p tcp --dport 25565 -j DNAT --to-destination <IP>
iptables -t nat -A POSTROUTING -j MASQUERADE</pre>
To clear what you just did:
<pre>
iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
</pre>
For more information on iptables: <a href="http://www.linuxhomenetworking.com/wiki/index.php/Quick_HOWTO_:_Ch14_:_Linux_Firewalls_Using_iptables" target="_blank">Linux Home Networking</a>, <a href="http://www.debuntu.org/how-to-redirecting-network-traffic-a-new-ip-using-iptables" target="_blank">debuntu</a>.
Good luck.
