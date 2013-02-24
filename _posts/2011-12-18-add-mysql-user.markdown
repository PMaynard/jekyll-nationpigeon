---
comments: true
date: 2011-12-18 13:21:11
layout: post
slug: add-mysql-user
title: MySQL manage users
wordpress_id: 626
categories:
- Linux
tags:
- adding user
- MySQL
---

To view all users.

    
    SELECT user FROM mysql.user;



To add a MySQL user which is able to connect only from the local machine, and have access only to a database called soup.


    
    # mysql -u root -p
    INSERT INTO mysql.user (Host,User,Password) VALUES('localhost','username',PASSWORD('password'));
    GRANT USAGE ON *.* to username@localhost IDENTIFIED BY 'password';
    FLUSH PRIVILEGES;
    GRANT ALL PRIVILEGES ON soup.* TO username@localhost;
    FLUSH PRIVILEGES;



If you don't run the first "FLUSH PRIVILEGES;" statemtnt you might get the following error: 
    
    ERROR 1133 (42000): Can't find any matching row in the user table



To delete users 

    
    DELETE FROM mysql.user WHERE User='username';
    FLUSH PRIVILEGES;



A really got site to look up MySQL commands is: [pantz.org](http://www.pantz.org/software/mysql/mysqlcommands.html)
