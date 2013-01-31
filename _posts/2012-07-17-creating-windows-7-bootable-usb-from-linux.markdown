--- 
wordpress_id: 852
author_login: pete
layout: post
comments: []

author: Pete
title: Creating Windows 7 bootable USB from Linux
published: true
tags: 
- Linux
- Windows
- USB
- Bootable
- Widnwos 7
date: 2012-07-17 16:41:26 +01:00
categories: 
- Linux
- Windows
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=852
author_url: http://nationpigeon.com
status: publish
---
Using <a href="http://gparted.sourceforge.net/" title="GParted" target="_blank">GParted</a>, or another tool, format the USB to NTFS and make the partition bootable.

As root, mount your Windows ISO.
<pre class="brush: shell">
mount /home/osaka/en_windows_7.iso /mnt -o loop
</pre>

Then copy the contents to the USB.
<pre class="brush: shell">
cp -rv /mnt/* /media/USB
sync # Flush file system buffers
</pre>

Install the Windows boot loader to the USB.
<pre class="brush: shell">
ms-sys -7 /dev/sdX
</pre>

You may need to download and compile ms-sys. 
<pre class="brush: shell">
tar xvf ms-sys-2.X.tar.gz
cd ms-sys
make
make install # As root
</pre>

Done, reboot with your USB and boot into Windows*...

<strong>Links</strong>
<a href="http://ms-sys.sourceforge.net/" title="ms-sys" target="_blank">ms-sys homepage</a>

*Still not sure why anyone would want to install Windows :P
