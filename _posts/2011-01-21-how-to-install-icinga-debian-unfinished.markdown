--- 
wordpress_id: 447
author_login: pete
layout: post
comments: []

author: Pete
title: How to install Icinga Debian [UNFINISHED]
published: true
tags: 
- system monitoring
date: 2011-01-21 22:40:33 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/wordpress/?p=447
author_url: http://nationpigeon.com
status: publish
---
Upload the tar to user server.

<strong>scp ./icinga-1.2.1.tar.gz  osaka[at]nationpigeon.com:./icinga/</strong>

Extract it

<strong>tar -xvf icinga-1.2.1.tar.gz</strong>

<strong>./configure
make 
make all
</strong>

Then I got an error on <strong>make install</strong>, said there was no user 'icinga' so I created one.

<strong>useradd -m icinga 
passwd icinga</strong>

And it worked fine. Created a group for the user so it can send command to the web interface.

<strong>groupadd icinga-cmd</strong>

added Apaches users to this group and the icinga user
<strong>
usermod -a -G icinga-cmd www-data
usermod -a -G icinga-cmd icinga</strong>

Installed all the things it needs

<strong>make fullinstall</strong>

Create the config files

<strong>make install-config</strong>

Edited the contact details in <strong>nano /usr/local/icinga/etc/objects/contacts.cfg</strong>
To install the new web interface I made sure that I had all of its requirements with this command <strong>apt-get install php5 php5-cli php-pear php5-xmlrpc php5-xsl php5-pdo php5-gd php5-ldap php5-mysql</strong> - php5-pdo comes with php5 and php5-mysql so don't worry if that's not there.

Get the files.

<strong>git clone git://git.icinga.org/icinga-web.git</strong>

http://www.nationpigeon.com/html/docs/en/icinga-web-scratch.html



