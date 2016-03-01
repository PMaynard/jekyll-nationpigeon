---
date: 2016-03-01 09:34
layout: post
slug: no-space-left-on-device
title: No Space Left on Device
categories:
- linux
---
A few tips if you are stuck with out any space on the device, and you don't want to resize partitions.

These two will clean up some things, but need at least some space. So might not work: 

	apt-get autoclean 
	apt-get autoremove

If they don't a straight up clean should do the trick.

	apt-get clean 

If you're still stuck, then try to remove some old kernels which you might have downloaded:

	uname -r
	dpkg --get-selections | grep linux-image
	apt-get purge <whatever is not your current one>

Hopefully that will have fixed something. You might also want to try and locate some large files, using ``find`` but again that might need some disk space to work with.

A very useful tool to locate large files us [ncdu](https://dev.yorhel.nl/ncdu)(NCurses Disk Usage) is a curses-based version of the well-known 'du', and provides a fast way to see what directories are using your disk space.

To scan and browse the directory you're currently in, all you need is a simple:

	ncdu

If you want to scan a full filesystem, your root filesystem, for example, then you'll want to use "-x":

	ncdu -x /


