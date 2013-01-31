--- 
wordpress_id: 1114
author_login: pete
layout: post
comments: []

author: Pete
title: Eclipse and Android Dev
published: true
tags: 
- Linux
- Android SDK
- Eclipse
date: 2012-09-02 20:22:47 +01:00
categories: 
- Programming
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=1114
author_url: http://nationpigeon.com
status: publish
---
If you get the following error with Eclipse on Linux (Maybe Windows): 
<pre class="brush: plain">Cannot complete the install because one or more required items could not be found.
  Software being installed: Android Development Tools 0.9.4.v200910220141-17704 (com.android.ide.eclipse.adt.feature.group 0.9.4.v200910220141-17704)
  Missing requirement: Android Development Tools 0.9.4.v200910220141-17704 (com.android.ide.eclipse.adt.feature.group 0.9.4.v200910220141-17704) requires 'org.eclipse.wst.sse.core 0.0.0' but it could not be found</pre>

1. Go to Help->Install Software
2. Click on "Available Software Sites"
3. Set "check" on check box - http://download.eclipse.org/releases/helios (for helios - Eclipse 3.6 )
4. Try to install Android Development Tools 
