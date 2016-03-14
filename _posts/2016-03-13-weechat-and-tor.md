---
date: 2016-03-13 14:08:00
layout: post
slug: weechat-and-tor
title: Weechat and Tor
categories:
- linux
---
Install tor and weechat

	sudo apt-get install tor weechat

Uncomment ```SocksPort 9050``` from ```/etc/tor/torrc``` to create a SOCKS proxy to the Tor network on the localhost.

In weechat add the proxy, add a server making sure it is over SSL and allows Tor connections.

	/proxy add tor socks5 127.0.0.1 9050
	/server add <server> -ssl  
	/set irc.server.<server>.proxy "tor"

Now you're thinking with Tor.