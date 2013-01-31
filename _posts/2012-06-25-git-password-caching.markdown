--- 
wordpress_id: 825
author_login: pete
layout: post
comments: []

author: Pete
title: Git password caching
published: true
tags: 
- Git
- password managment
- development
date: 2012-06-25 15:55:45 +01:00
categories: 
- Programming
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=825
author_url: http://nationpigeon.com
status: publish
---
<pre>git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'</pre>

The first command enables the password caching, the second sets the timeout to 1hr.

Note this won't work with ssh, but you will have already setup SSH Keys, right?
