---
comments: true
date: 2012-09-02 20:22:47
layout: post
slug: eclipse-and-android-dev
title: Eclipse and Android Dev
wordpress_id: 1114
categories:
- Programming
tags:
- Android SDK
- Eclipse
- Linux
---

If you get the following error with Eclipse on Linux (Maybe Windows): 

    
    Cannot complete the install because one or more required items could not be found.
      Software being installed: Android Development Tools 0.9.4.v200910220141-17704 (com.android.ide.eclipse.adt.feature.group 0.9.4.v200910220141-17704)
      Missing requirement: Android Development Tools 0.9.4.v200910220141-17704 (com.android.ide.eclipse.adt.feature.group 0.9.4.v200910220141-17704) requires 'org.eclipse.wst.sse.core 0.0.0' but it could not be found



1. Go to Help->Install Software
2. Click on "Available Software Sites"
3. Set "check" on check box - http://download.eclipse.org/releases/helios (for helios - Eclipse 3.6 )
4. Try to install Android Development Tools 
