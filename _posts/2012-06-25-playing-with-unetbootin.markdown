--- 
wordpress_id: 821
author_login: pete
layout: post
comments: []

author: Pete
title: Playing with Unetbootin
published: true
tags: 
- Open Source
- Unetbootin
- Git
- bugs
- features
date: 2012-06-25 11:05:54 +01:00
categories: 
- Programming
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=821
author_url: http://nationpigeon.com
status: publish
---
I was using netbootin like I always do, got annoyed about the fact that I couldn't find my iso image in the mess of files which is called my home directory. That's when I thought I could implement a filter...

<h2>Objective</h2>
To add a filter to the image selection screen.

<h2>Action</h2>
1. First I searched unetbootin's bug system for any referrence to a file filter and found <a href="https://bugs.launchpad.net/unetbootin/+bug/466815" target="_BLANK">this</a>, which I assigned to my self. 

2. I got a copy of the source <b>git clone http://github.com/gkovacs/unetbootin.git</b>

3. Installed the development library required. <b>apt-get install libqt4-dev</b>

4. Installed the Qt <a href="http://qt.nokia.com/products/qt-sdk" target="_BLANK">SDK</a>, which also comes with a nice IDE (Qt Creator).

5. Had a look around and located the function which allows you to select files (<b>void unetbootin::on_FloppyFileSelector_clicked()</b>). It uses Qt's <a href="http://doc.qt.nokia.com/4.6/qfiledialog.html#getOpenFileName">QFileDialog::getOpenFileName</a>. 

Qt API is documented very well I was able to add new filters within seconds <a href="https://github.com/PMaynard/unetbootin/commit/0559cf23316f4fd91be67a13feac60ca2e0cd7c6" target="_BLANK">See</a> simple.

6. Compile, check that I can select files. Sent a git pull request to the unetbootin mantainers. Done.

<a href="http://nationpigeon.com/wp-content/uploads/2012/06/unetbootin-filter.png"><img src="http://nationpigeon.com/wp-content/uploads/2012/06/unetbootin-filter-300x206.png" alt="" title="unetbootin-filter" width="300" height="206" class="aligncenter size-medium wp-image-829" /></a>

Referrence
<a href="http://sourceforge.net/apps/trac/unetbootin/wiki" target="_BLANK">http://sourceforge.net/apps/trac/unetbootin/wiki</a>
<a href="http://doc.qt.nokia.com" target="_BLANK">http://doc.qt.nokia.com</a>
