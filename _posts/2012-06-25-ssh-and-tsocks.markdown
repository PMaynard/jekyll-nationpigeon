--- 
wordpress_id: 835
author_login: pete
layout: post
comments: []

author: Pete
title: SSH and tsocks
published: true
tags: 
- proxy
- Encrypted
- SSH
- SOCKS
date: 2012-06-25 12:10:49 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=835
author_url: http://nationpigeon.com
status: publish
---
Install tsocks on your client machine. Tsocks is a application which replaces all connect() calls with it's own, which means you can run any application though the server/proxy even if it dosent have support for proxy/SOCKS.

<pre>apt-get install tsocks</pre>

Update <b>/etc/tsocks.conf</b to be: 

<pre>
server = 127.0.0.1
server_port = 1080
</pre>

These will need to match the SSH setting, as seen later on.

You might want to configure local networks, but that's up to you. Local allows you to directly access the address, instead of through the server/proxy.

Setup your SSH connection to your sever.

<pre>ssh -w  -D 1080 user@server</pre>

That's it, you should be all set up. To run an application though the server/proxy simply open a terminal and enter:
<pre>tsocks <application></pre>

For example force firefox to use the server/proxy

<pre>tsocks firefox https://www.google.co.uk/search?q=whats+my+ip</pre>
