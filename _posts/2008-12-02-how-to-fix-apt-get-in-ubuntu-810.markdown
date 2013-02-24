---
comments: true
date: 2008-12-02 20:35:12
layout: post
slug: how-to-fix-apt-get-in-ubuntu-810
title: How to fix apt-get in Ubuntu 8.10
wordpress_id: 104
categories:
- Linux
tags:
- fix
- Linux
- Ubuntu
---

If somehow you have broken the APT package handling utility and you get this error:

	ed@niobe:~$ sudo apt-get install xchat
	E: dpkg was interrupted, you must manually run 'dpkg --configure -a' to correct the problem.

Then when you run  'dpkg --configure -a' you get this error:

	Processing triggers for libc6 ...
	ldconfig deferred processing now taking place
	dpkg: ../../src/packages.c:221: process_queue: Assertion `dependtry <= 4' failed.
	Aborted

This is how I fixed it.

I went to the `Synaptic package manager -> Settings -> Preferences -> File -> Delete cached packaged files`

Then `Edit -> Fix Broken packages`

Hope this helps someone ^_^
