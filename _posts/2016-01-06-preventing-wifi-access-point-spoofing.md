---
date: 2016-01-06 15:25:00
layout: post
slug: preventing-wifi-access-point-spoofing
title: Preventing Wi-Fi Access Point Spoofing 
categories:
- Linux
- Security
---
To prevent an adversary from spoofing your wifi's access point. i.e Setup another router with the same name '_The Cloud' for example.
Debian based systems which use NetwrokManger allow for whitelisting BSSIDs, the MAC address of the access point (ap)/router. Once you provide NetworkManager with a BSSID it will force the connection to use only that BSSID value. This can cause issues with roaming though. 

You can do this in two ways, nm-applet or ```nmcli```.

In nm-applet select the connection, and open the edit connection dialog. Enter the BSSID of the ap in the BSSID field and hit save.

![nm-applet edit connectionn](/images/posts/nm-applet-edit-con.png)

For ```nmcli``` run the command below:

	 nmcli connection modify The-Pump-House  +802-11-wireless.bssid <BSSID>

nmcli has a complex syntax but is very useful.

If you'd like such things for your Android device have a look at Wi-Fi Policy Police it is available on [Google Play](https://play.google.com/store/apps/details?id=be.uhasselt.privacypolice) and [F-Droid](https://f-droid.org/repository/browse/?fdid=be.uhasselt.privacypolice) source over at [GitHub](https://github.com/BramBonne/privacypolice) the [developers](https://www.brambonne.com/) have published a few papers on the subject.