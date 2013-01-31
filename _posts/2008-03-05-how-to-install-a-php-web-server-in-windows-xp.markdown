--- 
wordpress_id: 63
author_login: pete
layout: post
comments: []

author: Pete
title: How to install a PHP Web Server in Windows XP
published: true
tags: 
- Windows XP
- tutorial
date: 2008-03-05 22:14:45 +00:00
categories: 
- Windows
author_email: pgm987@gmail.com
wordpress_url: http://www.nationpigeon.com/archives/63
author_url: http://nationpigeon.com
status: publish
---
If you want to learn PHP you will need a server that has PHP support.  If you don't feel confident enoght too install a major web server and all the bits then good news.  There is a software called <a href="http://nanoweb.si.kz/?p=root" target="_blank">Nanoweb</a>, which is a free small web server that supports PHP.  It works on both Linux and Windows.  So for Windows download the Windows installer <a href="http://nanoweb.si.kz/downloads/dist/" target="_blank">here</a>
<blockquote><em>TIP: Download the version that has PHP with it if you do not already have that installed on your machine.</em></blockquote>
<blockquote>
<blockquote>
<blockquote></blockquote>
</blockquote>
</blockquote>
One you have it downlaoded double click on the installer and click on 'Extract'

<a href="wordpress/wp-content/images/nanno_web/NanoWeb_stepOne.jpg"><img src="wordpress/wp-content/images/nanno_web/NanoWeb_stepOne.jpg" title="[Image nanoweb One]" alt="[Image nanoweb One]" align="bottom" /></a>

It will extract the files and then terminate the install

<a href="wordpress/wp-content/images/nanno_web/NanoWeb_stepTwo.jpg"><img src="wordpress/wp-content/images/nanno_web/NanoWeb_stepTwo.jpg" title="[Image nanoweb two]" alt="[Image nanoweb two]" /></a>

It will load up the read me file and once you click on close it will continue with the install and end.  If you would like to read the read me at another time then you can find it at <a href="file:///C:/nanoweb/" target="_blank"><em>C:\nanowe</em></a><em>.</em>

Now that it is all installed goto your desktop and double click on 'Start Nanoweb' Unblock windows firewall and you should see a command prompt window saying the following.

<a href="wordpress/wp-content/images/nanno_web/NanoWeb_stepThree.jpg"><img src="wordpress/wp-content/images/nanno_web/NanoWeb_stepThree.jpg" title="[Image nanowebThree]" alt="[Image nanowebThree]" /></a>

This means that the server is all working fine.  To make sure of that type in localhost into your web browser (Internet Explorer, Firefox Netscape etc) You should see "Welcome to nanoweb!".  That file is located at <em><a href="file:///C:/nanoweb/www/" target="_blank">C:\nanoweb\www</a></em>, the www folder is the main root directory (folder) of the server.  This is where you will be saving all of your PHP script files.

That's it! All you need to do to set up a PHP development web server.  If you want other people to view your files then you may have to <a href="http://portforward.com/" target="_blank">port forward</a> your ip address, this will be coverd at another time.

<strong>If you liked this and are a nice person would you like to donate to my Stargate fund?</strong>

<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="image" src="https://www.paypal.com/en_GB/i/btn/btn_donate_SM.gif" border="0" name="submit" alt="Make payments with PayPal - it's fast, free and secure!">
<img alt="" border="0" src="https://www.paypal.com/en_GB/i/scr/pixel.gif" width="1" height="1">
<input type="hidden" name="encrypted" value="-----BEGIN PKCS7-----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-----END PKCS7-----
">
</form>
