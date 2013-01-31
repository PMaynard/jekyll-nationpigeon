--- 
wordpress_id: 815
author_login: pete
layout: post
comments: []

author: Pete
title: Program of the week xwininfo - window information utility for X
published: true
tags: 
- Linux
- UNIX
- X
- display information
date: 2012-06-17 16:18:22 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=815
author_url: http://nationpigeon.com
status: publish
---
Run it via the command line and click on a window you'd like more information about, and view the output.

For more inforamtion see 'man xwininfo' 

Example output: 
<pre>
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
</pre>
