---
date: 2016-12-17 12:26:00
layout: post
slug: firefox-config-steps
title: Firefox configuration steps
categories:
- linux
---
These are my notes for a  new Firefox profile. I used to use Ghostry instead of Privacy Badger but decided for a lightweight option which does not push me towards having an account and will not sell my data.

I use a separate password manager (see [here](https://nationpigeon.com/leaving-keepass-for-pass/)) and don't [trust](https://hotforsecurity.bitdefender.com/blog/how-a-boobytrapped-pdf-file-could-exploit-your-chrome-browser-and-its-not-adobes-fault-14122.html) PDFs being opened with in firefox. (I like them contained in AppArmour)

## about:addons

Extensions -> Disable Ubuntu Modifications  

Plugins -> Asks to Activate 'Shockwave Flash'  
Plugins -> Never Activate 'iTunes Application Detector'  
Plugins -> Never Activate 'OpenH264 Video Codex provided by Cisco systems'  

Languages -> Disabled 'English (South Africa)'  

## about:preferences 

Preferences -> General -> Check Default browser  
Preferences -> General -> When Firefox starts 'Show a blank page'  

Preferences -> Search -> Disable many One click search engines  
Preferences -> Search -> Set default to 'https://search.matrix.ac'  

Preferences -> Content -> Check 'Play DRM content'  

Preferences -> Applications -> PDF 'Use external application'  

Preferences -> Privacy -> Check 'Always apply Do Not Track'  

Preferences -> Security -> Un-check 'Remember logins for sites'  


## about:config

browser.backspace_action : 0 

browser.fullscreen.autohide : false 

## Install some addons

- [NoScript Security Suite](https://addons.mozilla.org/en-US/firefox/addon/noscript) 
	- Whitelist -> Removed default sites
	- Embeddings -> Un-Check 'Forbid @font-face'
	- Embeddings -> Un-Check 'Forbid Adobe Flash' (This is set to ask to active)
	- Embeddings -> Check 'Forbid WebGL'
	- Notifications -> Un-Check 'Show message about blocked scripts' 
	- Notifications -> Un-Check 'Display the release notes on updates' 
- [Privacy Badger](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17)
- [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
- [Self-Destructing Cookies](https://addons.mozilla.org/en-US/firefox/addon/self-destructing-cookies)
	- Preferences -> Un-Check 'Notifications'
- [HTTPS Everywhere](https://addons.mozilla.org/en-US/firefox/addon/https-everywhere)
	- Don't submit sites to them
