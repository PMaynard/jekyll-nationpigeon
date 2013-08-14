---
comments: true
date: 2011-01-21 19:02:36
layout: post
slug: rm-exclude
title: rm exclude
wordpress_id: 439
categories:
- Linux
tags:
- bash
- grep
- Linux
- ls
- rm
- UNIX
---

With help from [Google](https://encrypted.google.com/search?q=rm+exclude&ie=utf-8&oe=utf-8&aq=t&rls={moz:distributionID}:{moz:locale}:{moz:official}&client=firefox) and [Linux forum](http://www.linuxquestions.org/questions/red-hat-31/does-rm-command-has-a-option-exclude-623091/), found a cool command that will delete everything else but not the folder or file name in the specified field behold the command of destiny!

	rm -r `ls | grep -v 'snapshots'`

Make sure that around the piped ls command you have tilda and a single quote around the file/folder name.

Chomputers away!
