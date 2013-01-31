--- 
wordpress_id: 766
author_login: pete
layout: post
comments: []

author: Pete
title: Restoring MySQL from data files
published: true
tags: 
- MySQL
- backup
- Restore
date: 2012-02-18 21:12:57 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=766
author_url: http://nationpigeon.com
status: publish
---
MySQL stores all its data in the following location
<strong>/var/lib/mysql/<database></strong>
Simply make a copy of these files and you have a backup, when restoring make sure its owned by mysql.
