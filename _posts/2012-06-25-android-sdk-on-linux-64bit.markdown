--- 
wordpress_id: 823
author_login: pete
layout: post
comments: []

author: Pete
title: Android SDK on Linux 64bit
published: true
tags: 
- mobile
- Android
- SDK
date: 2012-06-25 12:29:49 +01:00
categories: 
- Programming
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=823
author_url: http://nationpigeon.com
status: publish
---
Dispite there being only a 32bit version of the android SDK, you can still work with it on your 64bit machine, make sure you have the following packages installed:

Debian, Ubuntu, etc
<pre class="brush: bash">
apt-get install ia32-libs
apt-get install sun-java6-jdk
</pre>

Fedora, CentOS, etc
<pre class="brush: bash">
yum install glibc.i686 zlib.i686 libstdc++.i686  
</pre>

Download the 32bit SDK <pre class="brush: plain">wget http://dl.google.com/android/android-sdk_r18-linux.tgz</pre> (If link is dead see Reference)

Extract and change into the newly created directory and run <b>tools/android update sdk --no-ui</b>. 
This will start updating everything in the SDK - Note this will take a while.

You should now be ready to start developing.

<strong>Reference</strong>
<a href="http://stackoverflow.com/questions/2710499/android-sdk-on-a-64-bit-linux-machine" target="_BLANK">http://stackoverflow.com/questions/2710499/android-sdk-on-a-64-bit-linux-machine</a>
<a href="http://developer.android.com/sdk/index.html" target="_BLANK">http://developer.android.com/sdk/index.html</a>
