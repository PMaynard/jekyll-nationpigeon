---
date: 2016-03-14 14:08:00
layout: post
slug: weechat-relay
title: Weechat Relay
categories:
- linux
---
Using weechat as a relay turns weechat into a server for clients to connect and control weechat. This can be an [android](https://github.com/ubergeek42/weechat-android) or [web](https://github.com/glowing-bear/glowing-bear) interface.

Don't assume these passwords are safe, you should really use [/secure](https://weechat.org/files/doc/stable/weechat_user.en.html#secured_data).

## SSH Relay
Add public key to ~/.ssh/authorized_keys on server. This allows only connections to be opened to the localhost on port 9000 for this SSH key.

	no-agent-forwarding,no-X11-forwarding,permitopen="localhost:9000",command="echo 'This account can only be used for weechat relays'" ssh-rsa ...KEY DATA HERE...

Copy private key over to phone, enter key location

	/relay add weechat 9000
	/set relay.network.password *************

## SSL Relay
Generate the needed files. If you want a non-self signed cert you can use letsencrypt. [guide](https://pascalpoitras.com/2016/01/04/weechat-weechat-relay-lets-encrypt/)

	mkdir -p ~/.weechat/ssl
	cd ~/.weechat/ssl
	openssl req -nodes -newkey rsa:2048 -keyout relay.pem -x509 -days 365 -out relay.pem

And in weechat run:

	/relay add ssl.weechat 8080
	/relay sslcertkey
	/set relay.network.password *************

