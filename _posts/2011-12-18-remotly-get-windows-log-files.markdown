---
comments: true
date: 2011-12-18 13:42:45
layout: post
slug: remotly-get-windows-log-files
title: Remotly generate windows event logs
wordpress_id: 620
categories:
- Windows
tags:
- Event Logs
- log
- Remotly
- Windows Server
---

To remotly generate log output: (Note the file will be created on the remote machine) 


    
    wevtutil epl /r:192.168.0.111 System  C:\output.evtx



You can then view it using event viewer.  You can replace System with any of the event logs. e.g. Application, Security and Setup. 

Reference
[technet.microsoft.com](http://technet.microsoft.com/en-us/library/cc766438.aspx)
