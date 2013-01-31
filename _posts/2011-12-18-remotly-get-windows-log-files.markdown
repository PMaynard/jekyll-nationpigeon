--- 
wordpress_id: 620
author_login: pete
layout: post
comments: []

author: Pete
title: Remotly generate windows event logs
published: true
tags: 
- Windows Server
- log
- Event Logs
- Remotly
date: 2011-12-18 13:42:45 +00:00
categories: 
- Windows
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=620
author_url: http://nationpigeon.com
status: publish
---
To remotly generate log output: (Note the file will be created on the remote machine) 

<pre>wevtutil epl /r:192.168.0.111 System  C:\output.evtx</pre>

You can then view it using event viewer.  You can replace System with any of the event logs. e.g. Application, Security and Setup. 

Reference
<a href="http://technet.microsoft.com/en-us/library/cc766438.aspx" target="_BLANK">technet.microsoft.com</a>
