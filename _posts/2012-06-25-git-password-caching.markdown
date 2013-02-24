---
comments: true
date: 2012-06-25 15:55:45
layout: post
slug: git-password-caching
title: Git password caching
wordpress_id: 825
categories:
- Programming
tags:
- development
- Git
- password managment
---

git config --global credential.helper cache
    git config --global credential.helper 'cache --timeout=3600'



The first command enables the password caching, the second sets the timeout to 1hr.

Note this won't work with ssh, but you will have already setup SSH Keys, right?
