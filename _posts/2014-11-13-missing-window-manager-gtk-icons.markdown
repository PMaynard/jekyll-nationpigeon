---
date: 2014-11-13 10:56:39
published: true
layout: post
slug: missing-window-manager-gtk-icons
title: GTK icons missing using a window manager
category: Linux, goomwwm, awesome, window-manager
---
If you're using a [window manager](https://wiki.archlinux.org/index.php/WM), such as [awesome](http://awesome.naquadah.org/) or [goomwwm](https://github.com/seanpringle/goomwwm), instead of a [desktop environment](https://wiki.archlinux.org/index.php/DE), such as [GNOME](https://www.gnome.org/) or [XFCE](http://www.xfce.org/). Then you might have the issue of some GTK applications not looking quite right, a problem I had was with missing icons.

![GTK Before and After](/images/posts/gtk-before-after.png)

List all available icons themes:

		ls ~/.icons/ /usr/share/icons/

You need to append the line, ```gtk-icon-theme-name = "-insert-theme-name-"```, to ```/etc/gtk-2.0/gtkrc``` or ```~/.gtkrc-2.0```.

		echo "gtk-icon-theme-name = \"Humanity\"" >> /etc/gtk-2.0/gtkrc

The above command globally set the theme to Humanity. The command is appended if the file exists, and creates it if not.