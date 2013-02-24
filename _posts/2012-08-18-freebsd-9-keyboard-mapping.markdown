---
comments: true
date: 2012-08-18 16:38:51
layout: post
slug: freebsd-9-keyboard-mapping
title: FreeBSD 9 Keyboard mapping
wordpress_id: 1095
categories:
- Systemless
tags:
- FreeBSD
- HAL
- keyboard mapping
---

To get HAL to set your keyboard mapping on boot create the below file:

    
    vi /usr/local/etc/hal/fdi/policy/x11-input.fdi


Enter this into it:

    
    <?xml version="1.0" encoding="ISO-8859-1"?>
    <deviceinfo version="0.2">
      <device>
        <match key="info.capabilities" contains="input.keyboard">
          <merge key="input.x11_options.XkbLayout" type="string">gb</merge>
        </match>
      </device>
    </deviceinfo>



For this to work you will need to have HAL enabled in rc.conf.


    
    
    echo 'hald_enable="YES"' >> /etc/rc.conf
    echo 'dbus_enable="YES"' >> /etc/rc.conf
    
