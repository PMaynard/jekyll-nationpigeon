--- 
wordpress_id: 98
author_login: pete
layout: post
comments: []

author: Pete
title: How to set up USB BT Voyager 105 Notes
published: true
tags: 
- Linux
- Ubuntu
- set-up
date: 2008-09-16 22:22:46 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://www.nationpigeon.com/archives/98
author_url: http://nationpigeon.com
status: publish
---
Set up and working on 6 Sep 2007 on Laptop ubuntu 7.04.&nbsp; With these files;

eciadsl-usermode_0.12-1_i386.deb
pppoe_3.5-4ubuntu1_i386.deb <- Not sure if it did need this one, but its all okay

<strong>Config - sudo eciadsl-config-tk</strong>

<em>User: pete.maynard@btbroadband.com
Password : Normal BT
VPI: 0
VCI: 38</em>

<em>DNS: UK..British Telecom
Modem: BT Voyager 105
Chipset: GS7470</em>

<em>VID1: 1690 - Defult
VID2: 1690 - Defult
PID1: 0215 - Defult
PID2: 0215 - Defult
ALT synch: 0 - Defult
ALT pppoeci: 0 - Defult</em>

<em>Bin file: gs7470_sybch19.bn
pppmode: VCM_RFC2364</em>

<em>Use DHCP: Not selected
Use Static IP: Not selected</em>

<strong>Useful Commands</strong>

Used to start the Modem and connect it to internet:
sudo /usr/bin/eciadsl-start
sudo /usr/bin/eciadsl-doctor <- Sorta like a debug

Used to configure:

sudo eciadsl-config-tk
sudo eciadsl-config-text < Sorta like a debug

<strong>links</strong>
<a href="http://eciadsl.flashtux.org/index.php" target="_blank">http://eciadsl.flashtux.org/index.php</a>
<a href="https://help.ubuntu.com/community/UsbAdslModem">https://help.ubuntu.com/community/UsbAdslModem</a>

<a href="http://www.nationpigeon.com/wordpress/wp-content/uploads/2008/09/usbmodem.zip" title="USB Modem Notes">Download used files and notes</a>

-Pete, to future Pete :P

P.S I found this note and thought "hey this could be useful for someone"
