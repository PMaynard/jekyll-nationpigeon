---
comments: true
date: 2012-08-07 15:10:12
layout: post
slug: search-for-files-that-do-not-contain-a-certain-term
title: Search for Files that Do NOT Contain a Certain Term
wordpress_id: 978
categories:
- Windows
tags:
- CLI
- cmd
- powershell
- search
- Windows
---

# Windows Command Prompt


To do this with Windows Command Prompt, CMD.

Start -> Run -> Type "**cmd**". use "**cd**" to change to your working directory and enter:

    
    dir | findstr /v /i "FINAL"


This will list all files and folders which do not have the word "FINAL" in the title.

    
    dir /a:-d | findstr /v /i "FINAL"


This will list all files which do not have the word "FINAL" in the title. Note the **/a:-d** this is listing just file, and NO folders.


# Powershell


It is possible to do this with Windows PowerShell.

    
    Get-ChildItem -exclude "*FINAL*"


This will list all files and folders which do not have the word "FINAL" in the title.

    
    Get-ChildItem -exclude "*FINAL*" | where { ! $_.PSIsContainer }


This will list all files which do not have the word "FINAL" in the title. Pipping the output to to the where command will make sure that only file are listed.

If you are running on Windows Vista or lower you may need to download and install Windows PowerShell.

Useful Links.

[http://technet.microsoft.com/en-us/library/ee176841.aspx](http://technet.microsoft.com/en-us/library/ee176841.aspx)
