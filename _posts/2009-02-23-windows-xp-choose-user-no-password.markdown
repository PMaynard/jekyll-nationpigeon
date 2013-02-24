---
comments: true
date: 2009-02-23 18:17:35
layout: post
slug: windows-xp-choose-user-no-password
title: Windows XP Choose User no password
wordpress_id: 124
categories:
- Windows
tags:
- login
- Windows XP
---

If you only have one account on your Windows XP computer which does not have a password and it is asking you to "select" the account.  It is possible to bypass this pointless selection by running this command in run (Start->Run or Windows Key and 'R')

`control userpasswords2`

Then un-check "User must enter a user name and password to use this computer"

That should solve your problem, let me know if this helps or not.
