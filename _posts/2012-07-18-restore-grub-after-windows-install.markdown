--- 
wordpress_id: 858
author_login: pete
layout: post
comments: []

author: Pete
title: Restore GRUB after Windows install
published: true
tags: 
- Linux
- Windows
- GRUB
- boot
- MBR
date: 2012-07-18 09:40:01 +01:00
categories: 
- Linux
- Windows
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=858
author_url: http://nationpigeon.com
status: publish
---
Boot up into a Live Linux Image.

Mount your old Linux Install, and use chroot to take control of it.
<pre class="brush: shell">
mount /dev/sdc1 /mnt
chroot /mnt
</pre>

You will get <b>grub-probe: error: cannot find a device for / (is /dev mounted?).</b> if you don't mount you devices, before attempting to install GRUB.

So mount all devices.
<pre class="brush: shell">
mount proc
mount sys
mount dev
</pre>

Force GRUB to update it's configuration file, and re install it back to the MBR.
<pre class="brush: shell">
update-grub
grub-install /dev/sdc
</pre>

When installing GRUB you need to make sure that you don't specify a number like you did when mounting, otherwise it will be installed on the partition.

Reboot and your done.
