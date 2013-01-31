--- 
wordpress_id: 617
author_login: pete
layout: post
comments: []

author: Pete
title: Disable GNU Screen Flash
published: true
tags: 
- Linux
- screen
- GNU Screen
- command line
- visual bell
date: 2011-12-01 18:42:49 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=617
author_url: http://nationpigeon.com
status: publish
---
The feature is called "visual bell".

Create or edit a ~/.screenrc file.

<pre>vbell_msg "bell: window ~%"</pre> - Message for visual bell
<pre>vbellwait 2</pre> - Seconds to pause the screen for visual bell
<pre>vbell off</pre> - Turns visual bell off

The settings will take place as soon as you detach/reattach your session, providing it's in the correct users home directory.
