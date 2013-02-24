---
comments: true
date: 2012-02-18 18:09:44
layout: post
slug: mysql-adding-a-database-and-table
title: MySQL Adding a database and table
wordpress_id: 764
categories:
- Linux
tags:
- MySQL
---

Log in with a user which has the correct privileges

    
    
    mysql> CREATE DATABASE port22;
    Query OK, 1 row affected (0.00 sec)
    



Change to the new database.

    
    
    mysql> use port22;
    Database changed
    



Create a new table with an auto increment ID, password and email fields.


    
    
    mysql> CREATE TABLE user (
        -> id TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
        -> pass VARCHAR(64),
        -> email VARCHAR(255)
        -> );
    Query OK, 0 rows affected (0.00 sec)
    
