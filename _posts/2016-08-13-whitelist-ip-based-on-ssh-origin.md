---
date: 2016-08-13 17:53:00
layout: post
slug: whitelist-ip-on-ssh-origin
title: Whitelist IP addresses based on SSH origin
categories:
- linux
---

Here is how you create a list of IP addresses, to be used with NGINX, based on successful ssh connections.

**$ cat /usr/bin/auth-list.sh**

	#!/bin/bash
	WHITELIST=/etc/nginx/conf/whitelist.conf

	# Make sure that we don't add it more than once.
	if ! grep -q $PAM_RHOST $WHITELIST; then
		echo allow $PAM_RHOST\; >> $WHITELIST
	fi

**$ cat /etc/pam.d/sshd**

	session optional pam_exec.so seteuid /usr/bin/auth-list.sh

Login via ssh and it will add your external IP address to the list.


**$ cat /etc/nginx/conf/whitelist.conf**

	allow 208.67.222.222;
	allow 208.67.220.220;


Reload NGINX for it to take affect.