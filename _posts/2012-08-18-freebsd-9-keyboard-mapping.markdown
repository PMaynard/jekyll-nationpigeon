--- 
wordpress_id: 1095
author_login: pete
layout: post
comments: []

author: Pete
title: FreeBSD 9 Keyboard mapping
published: true
tags: 
- FreeBSD
- keyboard mapping
- HAL
date: 2012-08-18 16:38:51 +01:00
categories: 
- Systemless
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=1095
author_url: http://nationpigeon.com
status: publish
---
To get HAL to set your keyboard mapping on boot create the below file:
<pre>vi /usr/local/etc/hal/fdi/policy/x11-input.fdi</pre>
Enter this into it:
<pre><?xml version="1.0" encoding="ISO-8859-1"?>
<deviceinfo version="0.2">
&nbsp; <device>
&nbsp;&nbsp;&nbsp; <match key="info.capabilities" contains="input.keyboard">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <merge key="input.x11_options.XkbLayout" type="string">gb</merge>
&nbsp;&nbsp;&nbsp; </match>
&nbsp; </device>
</deviceinfo></pre>

For this to work you will need to have HAL enabled in rc.conf.

<pre>
echo 'hald_enable="YES"' >> /etc/rc.conf
echo 'dbus_enable="YES"' >> /etc/rc.conf
</pre>
