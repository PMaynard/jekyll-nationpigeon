---
comments: true
date: 2012-06-25 11:05:54
layout: post
slug: playing-with-unetbootin
title: Playing with Unetbootin
wordpress_id: 821
categories:
- Programming
tags:
- bugs
- features
- Git
- Open Source
- Unetbootin
---

I was using netbootin like I always do, got annoyed about the fact that I couldn't find my iso image in the mess of files which is called my home directory. That's when I thought I could implement a filter...



## Objective


To add a filter to the image selection screen.



## Action


1. First I searched unetbootin's bug system for any referrence to a file filter and found [this](https://bugs.launchpad.net/unetbootin/+bug/466815), which I assigned to my self. 

2. I got a copy of the source **git clone http://github.com/gkovacs/unetbootin.git**

3. Installed the development library required. **apt-get install libqt4-dev**

4. Installed the Qt [SDK](http://qt.nokia.com/products/qt-sdk), which also comes with a nice IDE (Qt Creator).

5. Had a look around and located the function which allows you to select files (**void unetbootin::on_FloppyFileSelector_clicked()**). It uses Qt's [QFileDialog::getOpenFileName](http://doc.qt.nokia.com/4.6/qfiledialog.html#getOpenFileName). 

Qt API is documented very well I was able to add new filters within seconds [See](https://github.com/PMaynard/unetbootin/commit/0559cf23316f4fd91be67a13feac60ca2e0cd7c6) simple.

6. Compile, check that I can select files. Sent a git pull request to the unetbootin mantainers. Done.

[![](/uploads/2012/06/unetbootin-filter-300x206.png)](/uploads/2012/06/unetbootin-filter.png)

Referrence
[http://sourceforge.net/apps/trac/unetbootin/wiki](http://sourceforge.net/apps/trac/unetbootin/wiki)
[http://doc.qt.nokia.com](http://doc.qt.nokia.com)
