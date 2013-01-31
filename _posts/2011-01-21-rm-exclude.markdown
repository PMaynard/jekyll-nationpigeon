--- 
wordpress_id: 439
author_login: pete
layout: post
comments: []

author: Pete
title: rm exclude
published: true
tags: 
- Linux
- UNIX
- rm
- ls
- grep
- bash
date: 2011-01-21 19:02:36 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/wordpress/?p=439
author_url: http://nationpigeon.com
status: publish
---
With help from <a href="https://encrypted.google.com/search?q=rm+exclude&amp;ie=utf-8&amp;oe=utf-8&amp;aq=t&amp;rls={moz:distributionID}:{moz:locale}:{moz:official}&amp;client=firefox" target="_blank">Google</a> and <a href="http://www.linuxquestions.org/questions/red-hat-31/does-rm-command-has-a-option-exclude-623091/" target="_blank">Linux forum</a>, found a cool command that will delete everything else but not the folder or file name in the specified field behold the command of destiny!

<strong>rm -r `ls | grep -v 'snapshots'`</strong>
Make sure that around the piped ls command you have tilda and a single quote around the file/folder name.

Chomputers away!
