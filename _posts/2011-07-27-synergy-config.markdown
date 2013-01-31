--- 
wordpress_id: 564
author_login: pete
layout: post
comments: []

author: Pete
title: Synergy Config
published: true
tags: 
- Linux
- Windows
- bash
- Synergy
- network
- KVM
- croos-platform
date: 2011-07-27 19:27:00 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=564
author_url: http://nationpigeon.com
status: publish
---
To get synergy working, both the client and the server need to have a /etc/synergy.conf file, like the one below. make sure to replace "server" and "client" with their respective hostnames:
<pre>section: screens
    server:
    client:
end

section: aliases
    server:
    10.0.0.2
end

section: aliases
    client:
    10.0.0.50
end

section: links
    server:
    left = client
    client:
    right = server
end

section: options
    screenSaverSync = true
end</pre>
This is configured to have the client on the left of the server, and the server is to the right of the client.

Run the following commands:
<pre>sever# synergys -f --config /etc/synergy.conf
client# synergyc 10.0.0.2</pre>

Replace all instances of the word "server" with the hostname "chiyo":
<pre>vi:%s/server/chiyo</pre>
