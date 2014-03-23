---
comments: false
date: 2014-03-23 14:32:47
layout: post
slug: iptables-pcap-log
title: 'MAC Spoofing'
categories:
- Linux
- Security
---

ULOG is the netfilter/iptables logging daemon.  It connects to the netlink device of the Linux kernel and reads messages from the netfilter that get queued with the iptables ULOG target. It can output to plain text, MySQL, Postres and pcap.

Instal with:
    apt-get install ulogd-pcap 
    
Configure ulogd to outut in pcap format
     vim /etc/ulogd.conf
     
Uncomment `plugin="/usr/lib/ulogd/ulogd_PCAP.so"`, restart ulog. Then add the rule to iptables before the drop.

    -A INPUT -j ULOG
    
The pcap log files shoud be located at `/var/log/ulog/pcap.log`
