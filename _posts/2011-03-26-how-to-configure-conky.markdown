---
comments: true
date: 2011-03-26 12:56:06
layout: post
slug: how-to-configure-conky
title: How to configure Conky
wordpress_id: 523
categories:
- Linux
tags:
- bash
- bash script
- conky
- display
- Linux
- stats
---

[![Image of my conky config](http://nationpigeon.com/wp-content/uploads/2011/03/Conky-150x150.jpg)](http://nationpigeon.com/wp-content/uploads/2011/03/Conky.jpg)Install conky from your package manager.  The package is called conky.

- ```su -c 'yum install conky'```
- ```sudo apt-get install conky```

Once that's installed you can run conky from the command line.  When you first run conky it dosent have a very nice look to it, we'll fix that later.   Now that we know conky works, we can create a little bash script to load conky on boot.

    
    #!/bin/bash
    #Conky start-up delay script
    #Source: http://ubuntuforums.org/showthread.php?t=778131
    
    sleep 20 && conky;


For more information on this script look [here](http://ubuntuforums.org/showthread.php?t=778131).  Make this script executable and add it to the list of start up applications

If you are to reboot/run the script, youll have conky on your desktop. YAY.  Now we want it too look better so, google conky config, theme or conkyrc, find one edit if needed.

To install the config you need to create a .conkyrc file in your home directory** touch ~/.conkyrc** mine is this:



    
    # UBUNTU-CONKY
    # A comprehensive conky script, configured for use on
    # Ubuntu / Debian Gnome, without the need for any external scripts.
    #
    # Based on conky-jc and the default .conkyrc.
    # INCLUDES:
    # - tail of /var/log/messages
    # - netstat connections to your computer
    #
    # -- Pengo (conky@pengo.us)
    #
    
    # Create own window instead of using desktop (required in nautilus)
    own_window yes
    own_window_hints undecorated,below,skip_taskbar
    background no
    
    # Use double buffering (reduces flicker, may not work for everyone)
    double_buffer yes
    
    # fiddle with window
    use_spacer right
    use_xft yes
    
    # Update interval in seconds
    update_interval 3.0
    
    # Minimum size of text area
    minimum_size 0 5
    
    # Draw shades?
    draw_shades no
    
    # Text stuff
    draw_outline no # amplifies text if yes
    draw_borders no
    
    uppercase no # set to yes if you want all text to be in uppercase
    
    # Stippled borders?
    stippled_borders 0
    
    # border width
    border_width 0
    
    # Default colors and also border colors, grey90 == #e5e5e5
    #default_color white
    #default_shade_color black
    #default_outline_color grey90
    
    own_window_colour brown
    own_window_transparent yes
    
    # Text alignment, other possible values are commented
    alignment top_left
    alignment top_right
    #alignment bottom_left
    #alignment bottom_right
    
    # Gap between borders of screen and text
    gap_x 10
    gap_y 0
    
    # stuff after 'TEXT' will be formatted on screen
    
    override_utf8_locale yes
    xftfont Terminus:size=8
    xftalpha 0.8
    
    TEXT
    ${color slate grey}${time %a, } ${color }${time %e %B %G}
    ${color slate grey}${time %Z,    }${color }${time %H:%M:%S}
    
    ${voffset 6}${color}${font OpenLogos:size=30} Chiyo
    ${voffset -20}${color}${font}${color slate grey}UpTime: ${color }$uptime
    ${color}${font}${color slate grey}Kern:${color }$kernel
    ${color}${font}${color slate grey}CPU:${color } $cpu% ${acpitemp}C
    ${cpugraph 20,140 000000 ffffff}
    ${color slate grey}Load: ${color }$loadavg
    ${color slate grey}Processes: ${color }$processes  
    
    ${color}${font Webdings:size=12}i ${font}${color slate grey}Highest CPU:
    ${color #ddaa00} ${top name 1}${top cpu 1}
    ${color lightgrey} ${top name 2}${top cpu 2}
    ${color lightgrey} ${top name 3}${top cpu 3}
    
    ${color}${font Webdings:size=12}i ${font}${color slate grey}Highest MEM:
    ${color #ddaa00} ${top_mem name 1}${top_mem mem 1}
    ${color lightgrey} ${top_mem name 2}${top_mem mem 2}
    ${color lightgrey} ${top_mem name 3}${top_mem mem 3}
    
    ${color slate grey}MEM:  ${color } $memperc% $mem/$memmax
    ${membar 3,140}
    ${color slate grey}SWAP: ${color } $swapperc% $swap/$swapmax
    ${swapbar 3,140}
    
    ${color slate grey}ROOT:    ${color }${fs_free /}/${fs_size /}
    ${fs_bar 3,140 /}
    ${color slate grey}HOME:  ${color }${fs_free /home}/${fs_size /home}
    ${fs_bar 3,140 /home}
    
    ${color slate grey}Internet:
    ${color}${font PizzaDude Bullets:size=12}U${font}  Tot.up. ${totalup eth0} Kb/s
    ${voffset 1}${color}${font PizzaDude Bullets:size=12}US${font}  Up: ${color }${upspeed eth0}k/s
    ${upspeedgraph eth0 20,140 000000 ffffff}
    ${voffset 6}${color}${font PizzaDude Bullets:size=12}D${font}  Tot.dow. ${totaldown eth0} Kb/s
    ${voffset 1}${color}${font PizzaDude Bullets:size=12}DS${font}  Down: ${color }${downspeed eth0}k/s
    ${downspeedgraph eth0 20,140 000000 ffffff}
    
    #${voffset 5}${color}${font Sonora:size=17}&${font}${color slate grey} MusicPlayer:
    #${exec /usr/bin/rhythmbox-client –no-start –no-present –print-playing-format “%ta – %tt”}
    #${exec /usr/bin/rhythmbox-client –no-start –no-present –print-playing-format “%at”}


Hope this helps someone.
EOF
