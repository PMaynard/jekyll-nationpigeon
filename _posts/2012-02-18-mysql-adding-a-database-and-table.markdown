--- 
wordpress_id: 764
author_login: pete
layout: post
comments: []

author: Pete
title: MySQL Adding a database and table
published: true
tags: 
- MySQL
date: 2012-02-18 18:09:44 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=764
author_url: http://nationpigeon.com
status: publish
---
Log in with a user which has the correct privileges
<pre>
mysql> CREATE DATABASE port22;
Query OK, 1 row affected (0.00 sec)
</pre>

Change to the new database.
<pre>
mysql> use port22;
Database changed
</pre>

Create a new table with an auto increment ID, password and email fields.

<PRE>
mysql> CREATE TABLE user (
    -> id TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    -> pass VARCHAR(64),
    -> email VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.00 sec)
</PRE>
