--- 
wordpress_id: 626
author_login: pete
layout: post
comments: []

author: Pete
title: MySQL manage users
published: true
tags: 
- MySQL
- adding user
date: 2011-12-18 13:21:11 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=626
author_url: http://nationpigeon.com
status: publish
---
To view all users.
<PRE>SELECT user FROM mysql.user;</PRE>

To add a MySQL user which is able to connect only from the local machine, and have access only to a database called soup.

<pre># mysql -u root -p
INSERT INTO mysql.user (Host,User,Password) VALUES('localhost','username',PASSWORD('password'));
GRANT USAGE ON *.* to username@localhost IDENTIFIED BY 'password';
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON soup.* TO username@localhost;
FLUSH PRIVILEGES;</pre>

If you don't run the first "FLUSH PRIVILEGES;" statemtnt you might get the following error: <pre>ERROR 1133 (42000): Can't find any matching row in the user table</pre>

To delete users 
<pre>DELETE FROM mysql.user WHERE User='username';
FLUSH PRIVILEGES;</pre>

A really got site to look up MySQL commands is: <a href="http://www.pantz.org/software/mysql/mysqlcommands.html" target="_BLANK">pantz.org</a>
