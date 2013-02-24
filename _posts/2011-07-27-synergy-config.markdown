---
comments: true
date: 2011-07-27 19:27:00
layout: post
slug: synergy-config
title: Synergy Config
wordpress_id: 564
categories:
- Linux
tags:
- bash
- croos-platform
- KVM
- Linux
- network
- Synergy
- Windows
---

To get synergy working, both the client and the server need to have a /etc/synergy.conf file, like the one below. make sure to replace "server" and "client" with their respective hostnames:

    
    section: screens
        server:
        client:
    end
    
    section: aliases
        server:
        10.0.0.2
    end
    
    section: aliases
        client:
        10.0.0.50
    end
    
    section: links
        server:
        left = client
        client:
        right = server
    end
    
    section: options
        screenSaverSync = true
    end


This is configured to have the client on the left of the server, and the server is to the right of the client.

Run the following commands:

    
    sever# synergys -f --config /etc/synergy.conf
    client# synergyc 10.0.0.2



Replace all instances of the word "server" with the hostname "chiyo":

    
    vi:%s/server/chiyo
