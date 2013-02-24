---
comments: true
date: 2012-02-18 21:12:57
layout: post
slug: restoring-mysql-for-data-files
title: Restoring MySQL from data files
wordpress_id: 766
categories:
- Linux
tags:
- backup
- MySQL
- Restore
---

MySQL stores all its data in the following location

	/var/lib/mysql/<database>

Simply make a copy of these files and you have a backup, when restoring make sure its owned by mysql.
