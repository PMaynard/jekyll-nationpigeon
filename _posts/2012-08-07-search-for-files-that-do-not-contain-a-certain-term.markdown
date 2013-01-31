--- 
wordpress_id: 978
author_login: pete
layout: post
comments: []

author: Pete
title: Search for Files that Do NOT Contain a Certain Term
excerpt: |-
  Using Windows command line, to locate only the files you want.
  
  <a href="http://nationpigeon.com/search-for-files-that-do-not-contain-a-certain-term"><img src="http://nationpigeon.com/wp-content/uploads/2012/08/CMDExclude1.jpg" /></a>
published: true
tags: 
- Windows
- cmd
- powershell
- CLI
- search
date: 2012-08-07 15:10:12 +01:00
categories: 
- Windows
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=978
author_url: http://nationpigeon.com
status: publish
---
<h1>Windows Command Prompt</h1>
To do this with Windows Command Prompt, CMD.

Start -> Run -> Type "<strong>cmd</strong>". use "<strong>cd</strong>" to change to your working directory and enter:
<pre class="brush: plain">dir | findstr /v /i "FINAL"</pre>
This will list all files and folders which do not have the word "FINAL" in the title.
<pre class="brush: plain">dir /a:-d | findstr /v /i "FINAL"</pre>
This will list all files which do not have the word "FINAL" in the title. Note the <strong>/a:-d</strong> this is listing just file, and NO folders.
<h1>Powershell</h1>
It is possible to do this with Windows PowerShell.
<pre class="brush: plain">Get-ChildItem -exclude "*FINAL*"</pre>
This will list all files and folders which do not have the word "FINAL" in the title.
<pre class="brush: plain">Get-ChildItem -exclude "*FINAL*" | where { ! $_.PSIsContainer }</pre>
This will list all files which do not have the word "FINAL" in the title. Pipping the output to to the where command will make sure that only file are listed.

If you are running on Windows Vista or lower you may need to download and install Windows PowerShell.

Useful Links.

<a href="http://technet.microsoft.com/en-us/library/ee176841.aspx" target="_blank">http://technet.microsoft.com/en-us/library/ee176841.aspx</a>
