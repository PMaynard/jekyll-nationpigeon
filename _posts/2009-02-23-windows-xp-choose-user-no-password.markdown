--- 
wordpress_id: 124
author_login: pete
layout: post
comments: []

author: Pete
title: Windows XP Choose User no password
published: true
tags: 
- Windows XP
- login
date: 2009-02-23 18:17:35 +00:00
categories: 
- Windows
author_email: pgm987@gmail.com
wordpress_url: http://www.nationpigeon.com/archives/124
author_url: http://nationpigeon.com
status: publish
---
If you only have one account on your Windows XP computer which does not have a password and it is asking you to "select" the account.  It is possible to bypass this pointless selection by running this command in run (Start->Run or Windows Key and 'R')

<code>control userpasswords2</code>

Then un-check "User must enter a user name and password to use this computer"

That should solve your problem, let me know if this helps or not.
