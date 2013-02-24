---
comments: true
date: 2011-12-17 13:50:04
layout: post
slug: alsa-error
title: ALSA error
wordpress_id: 628
categories:
- Linux
tags:
- ALSA
- Linux
- sound
- user group
---

If you get the following error then you need to add you user to the "audio" group. 


    
    usermod -a -G audio osaka



Once you have done this it should work, you may need to logout for it to take effect.


    
    root@river:/home/osaka# sudo -u nobody aplay r106taq3.wav 
    ALSA lib confmisc.c:768:(parse_card) cannot find card '0'
    ALSA lib conf.c:4184:(_snd_config_evaluate) function snd_func_card_driver returned error: No such file or directory
    ALSA lib confmisc.c:392:(snd_func_concat) error evaluating strings
    ALSA lib conf.c:4184:(_snd_config_evaluate) function snd_func_concat returned error: No such file or directory
    ALSA lib confmisc.c:1251:(snd_func_refer) error evaluating name
    ALSA lib conf.c:4184:(_snd_config_evaluate) function snd_func_refer returned error: No such file or directory
    ALSA lib conf.c:4663:(snd_config_expand) Evaluate error: No such file or directory
    ALSA lib pcm.c:2212:(snd_pcm_open_noupdate) Unknown PCM default
    aplay: main:660: audio open error: No such file or directory
