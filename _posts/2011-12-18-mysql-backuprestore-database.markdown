--- 
wordpress_id: 663
author_login: pete
layout: post
comments: []

author: Pete
title: MySQL Backup/Restore database
published: true
tags: 
- MySQL
- backup
date: 2011-12-18 12:29:46 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=663
author_url: http://nationpigeon.com
status: publish
---
The following command will back up your MySQL database to a file.
<pre>mysqldump --add-drop-table -u user -p database > outputfile.sql</pre>

The following will restore your database.
<pre>mysql -u root -p database < outputfile.sql</pre>

Or for a complete server back up and compression: 
<pre>mysqldump -u root -p --all-databases | gzip > output.sql.gz</pre>
