---
comments: true
date: 2011-12-18 12:29:46
layout: post
slug: mysql-backuprestore-database
title: MySQL Backup/Restore database
wordpress_id: 663
categories:
- Linux
tags:
- backup
- MySQL
---

The following command will back up your MySQL database to a file.

    
    mysqldump --add-drop-table -u user -p database > outputfile.sql



The following will restore your database.

    
    mysql -u root -p database < outputfile.sql



Or for a complete server back up and compression: 

    
    mysqldump -u root -p --all-databases | gzip > output.sql.gz
