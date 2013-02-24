---
comments: true
date: 2012-06-17 16:18:22
layout: post
slug: program-of-the-week-xwininfo-window-information-utility-for-x
title: Program of the week xwininfo - window information utility for X
wordpress_id: 815
categories:
- Linux
tags:
- display information
- Linux
- UNIX
- X
---

Run it via the command line and click on a window you'd like more information about, and view the output.

For more inforamtion see 'man xwininfo' 

Example output: 

    
    
    osaka@OsakaPad ~ $ xwininfo
    
    xwininfo: Please select the window about which you
              would like information by clicking the
              mouse in that window.
    
    xwininfo: Window id: 0x201484c "Terminal"
    
      Absolute upper-left X:  684
      Absolute upper-left Y:  54
      Relative upper-left X:  1
      Relative upper-left Y:  29
      Width: 682
      Height: 688
      Depth: 32
      Visual: 0x63
      Visual Class: TrueColor
      Border width: 0
      Class: InputOutput
      Colormap: 0x2000005 (not installed)
      Bit Gravity State: NorthWestGravity
      Window Gravity State: NorthWestGravity
      Backing Store State: NotUseful
      Save Under State: no
      Map State: IsViewable
      Override Redirect State: no
      Corners:  +684+54  -0+54  -0-26  +684-26
      -geometry 75x38-0+25
    
