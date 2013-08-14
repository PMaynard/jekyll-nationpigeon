---
comments: true
date: 2008-09-16 22:22:46
layout: post
slug: how-to-set-up-usb-bt-voyager-105-notes
title: How to set up USB BT Voyager 105 Notes
wordpress_id: 98
categories:
- Linux
tags:
- Linux
- set-up
- Ubuntu
---

Set up and working on 6 Sep 2007 on Laptop ubuntu 7.04.
- eciadsl-usermode_0.12-1_i386.deb
- pppoe_3.5-4ubuntu1_i386.deb 
-- Not sure if it did need this one, but its all okay.

## Config

```sudo eciadsl-config-tk```
 
	User: pete@btbroadband.com
	Password : Normal BT
	VPI: 0
	VCI: 38

	DNS: UK..British Telecom
	Modem: BT Voyager 105
	Chipset: GS7470

	VID1: 1690 - Defult
	VID2: 1690 - Defult
	PID1: 0215 - Defult
	PID2: 0215 - Defult
	ALT synch: 0 - Defult
	ALT pppoeci: 0 - Defult

	Bin file: gs7470_sybch19.bn
	pppmode: VCM_RFC2364

	Use DHCP: Not selected
	Use Static IP: Not selected

## Useful Commands

Used to start the Modem and connect it to internet:

	sudo /usr/bin/eciadsl-start
	sudo /usr/bin/eciadsl-doctor

## Used to configure

	sudo eciadsl-config-tk
	sudo eciadsl-config-text

**Links**
- [http://eciadsl.flashtux.org/index.php](http://eciadsl.flashtux.org/index.php)
- [https://help.ubuntu.com/community/UsbAdslModem](https://help.ubuntu.com/community/UsbAdslModem)
- [Download used files and notes](http://www.nationpigeon.com/wordpress/wp-content/uploads/2008/09/usbmodem.zip)

-Pete, to future Pete :P

P.S I found this note and thought "hey this could be useful for someone"
