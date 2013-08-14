---
comments: true
date: 2010-07-11 19:03:47
layout: post
slug: network-attached-storage
title: Network Attached Storage
wordpress_id: 345
categories:
- Projects
- Systemless
tags:
- Cisco
- D-Link
- Linksys
- NAS
- Network Hard drive
---

As I love networks and love storage even more, I decided that I want to have a network attached storage device (NAS).  Now my first location on my NAS quest was obviously CISCO, as they are pure awesome. After looking at the super expensive products they had for sale I decided to give the not so cool but still cool Linksys a look over and found the [NAS200](http://www.linksysbycisco.com/UK/en/products/NAS200), with 2 USB and two SATA hard drive enclosure.

Now this looked very cool and had a load of features.  As I was reading this I was trying to work out how much it would cost me with a guess of £200 - 250. the actual price from [Amazon](http://www.amazon.co.uk/exec/obidos/ASIN/B00109T24U/ref=nosim/8659605-000-21) was £199, erm yeah maybe not.  The NAS200 has some cool features like the USB, which allows you to plug in two more hard drives or an SD card reader, which will be shared on the network.  It is also possible to put the two hard drives into RAID0 and 1.  The one thing that I wasn't too happy with was that the network interface was only 10/100

![Linksys NAS 200](/uploads/2010/07/Linksys-NAS200-150x150.jpg)

Okay so £200 for a NAS device which although is very cool, is a bit much for me.  So one of Amazon's recommendations that caught my eye was the [D-Link DNS-323](http://www.amazon.co.uk/D-Link-Bay-Network-Storage-Enclosure/dp/B000GK8LVE/ref=sr_1_1?ie=UTF8&s=electronics&qid=1278868348&sr=1-1), it doesn't look as good as the Linksys NAS200, but it is half the price.  With support for RAID and support for 1000Mbps connection, this seams like a very good deal.  From the comments it sounds like you'll need to update to the latest firmware, to get any sort of reliability from this device.  It also has a auto shut down feature which will spin down the disks after a user defined period.  The D-Link DNS 323 has support for auto Torrent Downloading and print server.  It would be best to run this with RAID 1, as if you were to run in RAID 0, the performance would be lost in the transfer as the Ethernet controller would only be able to provide  around 15MB/s.

Also from the comments:


> there's a DNS-323 community who have developed enhancements and new features for the embedded Linux that this thing uses is it's operating system


Which is all ways a good thing in my book, if you install the [fun_plug kernel](http://www.inreto.de/dns323/fun-plug/0.5/) you are able to use the print server port as USB storage, fun_plug will also allow SSH and many other very useful features.

![D Link DNS 323](/uploads/2010/07/D-Link-DNS-323-150x150.jpg)

So yeah, I'm now board at looking at NAS Devices, and have decided that the D-Link DNS 323 is quite cheap and functional for my needs compared to other devices out there.  If I were to buy this device I would place two SATA 1.5TB 5200RPM (to reduce heat, as 7200RPM would not have a big benefit here) hard drives in RAID 1.  

That is if I have the money, one can dream...

### References:
- [dsmg600](http://forum.dsmg600.info/viewforum.php?id=3)
- [Trusted Reviews](http://www.trustedreviews.com/networking/review/2006/11/20/D-Link-DNS-323/p1)
