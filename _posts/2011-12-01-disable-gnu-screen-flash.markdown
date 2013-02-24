---
comments: true
date: 2011-12-01 18:42:49
layout: post
slug: disable-gnu-screen-flash
title: Disable GNU Screen Flash
wordpress_id: 617
categories:
- Linux
tags:
- command line
- GNU Screen
- Linux
- screen
- visual bell
---

The feature is called "visual bell".

Create or edit a ~/.screenrc file.


    
    vbell_msg "bell: window ~%"

- Message for visual bell

    
    vbellwait 2

- Seconds to pause the screen for visual bell

    
    vbell off

- Turns visual bell off

The settings will take place as soon as you detach/reattach your session, providing it's in the correct users home directory.
