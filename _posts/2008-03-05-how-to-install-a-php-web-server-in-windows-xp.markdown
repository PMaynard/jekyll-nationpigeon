---
comments: true
date: 2008-03-05 22:14:45
layout: post
slug: how-to-install-a-php-web-server-in-windows-xp
title: How to install a PHP Web Server in Windows XP
wordpress_id: 63
categories:
- Windows
tags:
- tutorial
- Windows XP
---

If you want to learn PHP you will need a server that has PHP support.  If you don't feel confident enoght too install a major web server and all the bits then good news.  There is a software called [Nanoweb](http://nanoweb.si.kz/?p=root), which is a free small web server that supports PHP.  It works on both Linux and Windows.  So for Windows download the Windows installer [here](http://nanoweb.si.kz/downloads/dist/)


_TIP: Download the version that has PHP with it if you do not already have that installed on your machine._

One you have it downlaoded double click on the installer and click on 'Extract'

![](/uploads/2008/03/NanoWeb_stepOne.jpg)

It will extract the files and then terminate the install

![](/uploads/2008/03/NanoWeb_stepTwo.jpg)

It will load up the read me file and once you click on close it will continue with the install and end.  If you would like to read the read me at another time then you can find it at [_C:\nanowe_](file:///C:/nanoweb/).

Now that it is all installed goto your desktop and double click on 'Start Nanoweb' Unblock windows firewall and you should see a command prompt window saying the following.

![](/uploads/2008/03/NanoWeb_stepThree.jpg)

This means that the server is all working fine.  To make sure of that type in localhost into your web browser (Internet Explorer, Firefox Netscape etc) You should see "Welcome to nanoweb!".  That file is located at _[C:\nanoweb\www](file:///C:/nanoweb/www/)_, the www folder is the main root directory (folder) of the server.  This is where you will be saving all of your PHP script files.

That's it! All you need to do to set up a PHP development web server.  If you want other people to view your files then you may have to [port forward](http://portforward.com/) your ip address, this will be coverd at another time.