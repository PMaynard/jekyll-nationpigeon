---
date: 2014-07-15 10:33:39
published: true
layout: post
slug: goomwwm-keybinding
title: GOOMWWM Keybinding
category: Linux
---

Keyboard shortcuts become a thing of the past when you're running a minimal window manager such as [GOOMWWM](https://github.com/seanpringle/goomwwm). I decided to use [XBindKeys](http://www.nongnu.org/xbindkeys/xbindkeys.html), a grabbing keys program for X. 

XBindKeys uses a configuration file, located at $HOME/.xbindkeysrc. 

Contents of my .xbindkeysrc

	"gnome-terminal"
	  Mod2 + F12

You can create your own config, or have a default one generated for you.

	xbindkeys --defaults > $HOME/.xbindkeysrc 

To get the correct key codes, you can use _-k_ to identify key presses. It will open a blank window and output the command to be placed into your configuration file.

	xbindkeys -k

XBindKeys should be easily found in your package manager.