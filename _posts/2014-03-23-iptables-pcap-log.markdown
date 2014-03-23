---
comments: false
date: 2014-03-23 14:32:47
layout: post
slug: iptables-pcap-log
title: 'IPTABLES pcap log'
categories:
- Linux
- Security
---

ULOG is the netfilter/iptables logging daemon.  It connects to the netlink device of the Linux kernel and reads messages from the netfilter that get queued with the iptables ULOG target. It can output to plain text, MySQL, Postres and PCAP.

Install with:

    apt-get install ulogd-pcap 
    
Configure ulogd to output in PCAP format

     vim /etc/ulogd.conf
     
Un-comment `plugin="/usr/lib/ulogd/ulogd_PCAP.so"`, restart ulog. Then add a log rule to iptables before the final drop rule.

    -A INPUT -j ULOG
    
The PCAP log file should be located at `/var/log/ulog/pcap.log`
