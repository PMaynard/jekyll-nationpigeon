---
comments: true
date: 2011-01-21 22:40:33
layout: post
slug: how-to-install-icinga-debian-unfinished
title: How to install Icinga Debian [UNFINISHED]
wordpress_id: 447
categories:
- Linux
tags:
- system monitoring
---

Upload the tar to user server.

	scp ./icinga-1.2.1.tar.gz  osaka[at]nationpigeon.com:./icinga/

Extract it

	tar -xvf icinga-1.2.1.tar.gz

	./configure
	make 
	make all


Then I got an error on **make install**, said there was no user 'icinga' so I created one.

	useradd -m icinga 
	passwd icinga

And it worked fine. Created a group for the user so it can send command to the web interface.

	groupadd icinga-cmd

added Apaches users to this group and the icinga user

	usermod -a -G icinga-cmd www-data
	usermod -a -G icinga-cmd icinga

Installed all the things it needs

	make fullinstall

Create the config files

	make install-config

Edited the contact details in **nano /usr/local/icinga/etc/objects/contacts.cfg**
To install the new web interface I made sure that I had all of its requirements with this command 
	
	apt-get install php5 php5-cli php-pear php5-xmlrpc php5-xsl php5-pdo php5-gd php5-ldap php5-mysql

php5-pdo comes with php5 and php5-mysql so don't worry if that's not there.

Get the files.

	git clone git://git.icinga.org/icinga-web.git

http://www.nationpigeon.com/html/docs/en/icinga-web-scratch.html




