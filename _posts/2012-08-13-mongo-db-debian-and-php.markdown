---
comments: true
date: 2012-08-13 18:29:20
layout: post
slug: mongo-db-debian-and-php
title: Install Mongo DB on Debian with PHP support
wordpress_id: 1026
categories:
- Linux
tags:
- apt-get
- bash
- Databse
- debian
- Linux
- MongoDB
- PHP
- Ubuntu
---

Steps to Install MongoDB - This should work with Debian and Ubuntu, with the [upstart](http://en.wikipedia.org/wiki/Upstart) init system.

    
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10 &&
    sudo sh -c 'echo ''deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen'' > /etc/apt/sources.list.d/10gen.list' &&
    sudo apt-get update &&
    sudo apt-get install mongodb-10gen;


If all goes well you should have a fully working MongoDB. To make sure things are working have a look at **/etc/var/log/mongodb/mongodb.log**

Try it out with:

    
    #mongo
    > db.test.save( { a: 1 } )
    > db.test.find()
    { "_id" : ObjectId("5028ef81799a8e44dd0cd654"), "a" : 1 }
    { "_id" : ObjectId("5028f2b13579fd22f1b63d91"), "a" : 1 }


Now go have a look at a nice Tutorial for [MongoDB](http://www.mongodb.org/display/DOCS/Tutorial/)


# MongoDB and PHP


We need to install the MongoDB driver for PHP before they can communicate.

    
    sudo apt-get install php5-dev php5-cli php-pear && # Get pecl working.
    sudo pecl install mongo # Install the PHP Mongo Driver.


Now show PHP the extension by adding **extension=mongo.so** to your php.ini and restart your web server.

![MongoDB extension as seen from phpinfo()](/uploads/2012/08/MongoPHP.jpg) MongoDB extension as seen from phpinfo()


# Reference
- [http://www.mongodb.org/display/DOCS/PHP+Language+Center](http://www.mongodb.org/display/DOCS/PHP+Language+Center)
- [http://www.php.net/manual/en/mongo.tutorial.php](http://www.php.net/manual/en/mongo.tutorial.php)
