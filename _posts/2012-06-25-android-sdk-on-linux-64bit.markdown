---
comments: true
date: 2012-06-25 12:29:49
layout: post
slug: android-sdk-on-linux-64bit
title: Android SDK on Linux 64bit
wordpress_id: 823
categories:
- Programming
tags:
- Android
- mobile
- SDK
---

Dispite there being only a 32bit version of the android SDK, you can still work with it on your 64bit machine, make sure you have the following packages installed:

Debian, Ubuntu, etc

    
    
    apt-get install ia32-libs
    apt-get install sun-java6-jdk
    



Fedora, CentOS, etc

    
    
    yum install glibc.i686 zlib.i686 libstdc++.i686  
    



Download the 32bit SDK 
    
    wget http://dl.google.com/android/android-sdk_r18-linux.tgz

(If link is dead see Reference)

Extract and change into the newly created directory and run **tools/android update sdk --no-ui**. 
This will start updating everything in the SDK - Note this will take a while.

You should now be ready to start developing.

**Reference**
[http://stackoverflow.com/questions/2710499/android-sdk-on-a-64-bit-linux-machine](http://stackoverflow.com/questions/2710499/android-sdk-on-a-64-bit-linux-machine)
[http://developer.android.com/sdk/index.html](http://developer.android.com/sdk/index.html)
