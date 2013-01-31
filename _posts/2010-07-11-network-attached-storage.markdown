--- 
wordpress_id: 345
author_login: pete
layout: post
comments: []

author: Pete
title: Network Attached Storage
published: true
tags: 
- NAS
- Cisco
- D-Link
- Linksys
- Network Hard drive
date: 2010-07-11 19:03:47 +01:00
categories: 
- Systemless
- Projects
author_email: pgm987@gmail.com
wordpress_url: http://www.nationpigeon.com/?p=345
author_url: http://nationpigeon.com
status: publish
---
As I love networks and love storage even more, I decided that I want to have a network attached storage device (NAS). &nbsp;Now my first location on my NAS quest was&nbsp;obviously&nbsp;CISCO, as they are pure awesome. After looking at the super expensive products they had for sale I decided to give the not so cool but still cool Linksys a look over and found the <a href="http://www.linksysbycisco.com/UK/en/products/NAS200" target="_blank">NAS200</a>, with 2 USB and two SATA hard drive&nbsp;enclosure.

Now this looked very cool and had a load of features. &nbsp;As I was reading this I was trying to work out how much it would cost me with a guess of &pound;200 - 250. the actual price from&nbsp;<a href="http://www.amazon.co.uk/exec/obidos/ASIN/B00109T24U/ref=nosim/8659605-000-21" target="_blank">Amazon</a> was &pound;199, erm yeah maybe not. &nbsp;The NAS200 has some cool&nbsp;features like the USB, which allows you to plug in two more hard drives or an SD card reader, which will be shared on the network. &nbsp;It is also possible to put the two hard drives into RAID0 and 1. &nbsp;The one thing that I&nbsp;wasn't&nbsp;too happy with was that the network interface was only 10/100

[caption id="attachment_349" align="alignnone" width="150" caption="Linksys NAS 200"]<a href="http://www.nationpigeon.com/wordpress/wp-content/uploads/2010/07/Linksys-NAS200.jpg"><img class="size-thumbnail wp-image-349" title="Linksys-NAS200" src="http://www.nationpigeon.com/wordpress/wp-content/uploads/2010/07/Linksys-NAS200-150x150.jpg" alt="Linksys NAS 200" width="150" height="150" /></a>[/caption]

Okay so &pound;200 for a NAS device which&nbsp;although&nbsp;is very cool, is a bit much for me. &nbsp;So one of Amazon's&nbsp;recommendations that caught my eye was the&nbsp;<a href="http://www.amazon.co.uk/D-Link-Bay-Network-Storage-Enclosure/dp/B000GK8LVE/ref=sr_1_1?ie=UTF8&amp;s=electronics&amp;qid=1278868348&amp;sr=1-1" target="_blank">D-Link DNS-323</a>, it&nbsp;doesn't&nbsp;look as good as the Linksys NAS200, but it is half the price. &nbsp;With support for RAID and support for 1000Mbps connection, this seams like a very good deal. &nbsp;From the comments it sounds like you'll need to update to the latest firmware, to get any sort of reliability from this device. &nbsp;It also has a auto shut down feature which will spin down the disks after a user&nbsp;defined period. &nbsp;The D-Link DNS 323 has support for auto Torrent Downloading and print server. &nbsp;It would be best to run this with RAID 1, as if you were to run in RAID 0, the&nbsp;performance&nbsp;would be lost in the transfer as the&nbsp;Ethernet&nbsp;controller&nbsp;would only be able to provide &nbsp;around 15MB/s.

Also from the comments:
<blockquote>there's a DNS-323 community who have developed enhancements and new features for the embedded Linux that this thing uses is it's operating system</blockquote>
Which is all ways a good thing in my book, if you install the <a href="http://www.inreto.de/dns323/fun-plug/0.5/" target="_blank">fun_plug kernel</a> you are able to use the print server port as USB storage, fun_plug will also allow SSH and many other very useful features.

[caption id="attachment_348" align="alignnone" width="150" caption="D Link DNS 323"]<a href="http://www.nationpigeon.com/wordpress/wp-content/uploads/2010/07/D-Link-DNS-323.jpg"><img class="size-thumbnail wp-image-348" title="D-Link-DNS-323" src="http://www.nationpigeon.com/wordpress/wp-content/uploads/2010/07/D-Link-DNS-323-150x150.jpg" alt="D Link DNS 323" width="150" height="150" /></a>[/caption]

So yeah, I'm now board at looking at NAS Devices, and have decided that the D-Link DNS 323 is quite cheap and functional for my needs&nbsp;compared&nbsp;to other devices out there. &nbsp;If I were to buy this device I would place two SATA 1.5TB 5200RPM ( to reduce heat, as 7200RPM would not have a big benefit here) hard drives in RAID 1. &nbsp;That is if I have the money lol. &nbsp;One can dream.
<h3>References:</h3>
<a title="dsmg600" href="http://forum.dsmg600.info/viewforum.php?id=3" target="_blank">dsmg600</a>

<a href="http://www.trustedreviews.com/networking/review/2006/11/20/D-Link-DNS-323/p1" target="_blank">Trusted Reviews</a>
