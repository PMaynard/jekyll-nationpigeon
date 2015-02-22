---
date: 2015-02-22 14:57
published: true
layout: post
slug: thunderbird-office365-calendar-qub
title: Thunderbird Office365 Calendar QUB
categories:
- systemless
---

To have access to Outlook's meeting request and calendar features, you need to install and configure two addons for Thunderbird.

1. Install the latest version of the [Lightning](https://www.mozilla.org/en-US/projects/calendar/) add-on.
2. Download the latest version of the [Exchange Calendar and Tasks Add-on](https://github.com/Ericsson/exchangecalendar).  
	- There are a few release candidates, currently the [latest version is 3.2.2](https://github.com/Ericsson/exchangecalendar/releases/tag/3.2.2)
3. In Thunderbird, click on Tools | Add-ons
4. Click on the Gear icon (next to "Search all add-ons") and select Install Add-on From File.
5. Select the recently downloaded addon.

Once the two addons are installed, create a new calendar, select **Microsoft Exchange 2007/2010**
Use the following settings:

	Server URL: https://pod51050.outlook.com/ews/exchange.asmx
	Primary email address: name01@qub.ac.uk
	Username: userid@.ads.qub.ac.uk
	Domain name: [Leave this blank]
	Share Folder Id: [Leave this blank]

These details are for Queen's University Belfast, something similar should work with other organizations.

If you have trouble connecting check the Server URL. I identified the address be checking the URL bar when I was logged into office365's web-app. I have been unable to reproduce this, if you find a way please let me know.
