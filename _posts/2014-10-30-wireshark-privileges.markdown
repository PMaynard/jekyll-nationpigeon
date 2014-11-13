---
date: 2014-10-30 14:11:39
published: true
layout: post
slug: wireshark-privileges
title: Wireshark Privileges
category: Linux
---
Reconfigure wirehsark-common so that it allows non-root users to access the interface. Add the user to the wireshark group.

	dpkg-reconfigure wireshark-common
	usermod -a -G wireshark <user>

Done. 
