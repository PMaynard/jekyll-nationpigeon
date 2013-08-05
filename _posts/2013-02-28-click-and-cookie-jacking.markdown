---
layout: post
slug: click-and-cookie-jacking
title: Click and cookie jacking
wordpress_id: 1135
categories:
- Security
tags:
- Exploit
published: false
---
Using [nikto](http://www.cirt.net/nikto2/) I was able to find the follow two issues:
- The anti-clickjacking X-Frame-Options header is not present.
- Cookie PHPSESSID created without the httponly flag

This will allow me to exploit the fact that I can generate my own cookie, using 
another users session. i.e. Logging in as another user. And to create a click jacking 
site which will pretend to be the original site.

To get the PHPSESSID open up the web console (Ctrl+Shift+k) and enter 
`document.cookie.match(/PHPSESSID=[^;]+/)`