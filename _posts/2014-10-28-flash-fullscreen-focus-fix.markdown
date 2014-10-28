---
date: 2014-10-28 09:21:39
published: true
layout: post
slug: flash-fullscreen-focus-fix
title: Flash Fullscreen Focus Fix
category: Systemless
---
To force flash to not exit full screen when focus is lost, edit the __NET_ACTIVE_WINDOW__, in __libflashplayer.so__

		sudo sed -i 's/_NET_ACTIVE_WINDOW/__ET_ACTIVE_WINDOW/g' /usr/lib/firefox-addons/plugins/libflashplayer.so

