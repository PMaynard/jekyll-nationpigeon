---
date: 2016-01-04 12:52:00
layout: post
slug: duplicity-and-hubic
title: Identify which port is USB3
categories:
- Linux
---
I wanted to plug in a USB3 device into my work machine. I did not know if it even had USB3 support. So I used ```lsusb``` to find out.

	$ lsusb 
	Bus 004 Device 006: ID 0bda:2838 Realtek Semiconductor Corp. RTL2838 DVB-T
	Bus 004 Device 005: ID 413c:2003 Dell Computer Corp. Keyboard
	Bus 004 Device 043: ID 046d:c077 Logitech, Inc. M105 Optical Mouse
	Bus 004 Device 044: ID 18d1:4ee2 Google Inc. Nexus 4 (debug)
	Bus 004 Device 003: ID 03f0:b707 Hewlett-Packard 
	Bus 004 Device 002: ID 8087:0024 Intel Corp. Integrated Rate Matching Hub
	Bus 004 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
	Bus 002 Device 003: ID 0480:a00c Toshiba America Inc 
	Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
	Bus 001 Device 003: ID 0424:2514 Standard Microsystems Corp. USB 2.0 Hub
	Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
	Bus 003 Device 002: ID 8087:0024 Intel Corp. Integrated Rate Matching Hub
	Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

From this I was able to workout that it had some USB 2 and one USB 3.

	Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub

But how do I know where that is on my computer, and how do I know once I've plugged it?

```lsusb -t``` gave me the answer. 

	$ lsusb -t
	/:  Bus 04.Port 1: Dev 1, Class=root_hub, Driver=ehci-pci/2p, 480M
	    |__ Port 1: Dev 2, If 0, Class=Hub, Driver=hub/8p, 480M
		|__ Port 1: Dev 3, If 0, Class=Mass Storage, Driver=usb-storage, 480M
		|__ Port 2: Dev 44, If 0, Class=Vendor Specific Class, Driver=, 480M
		|__ Port 2: Dev 44, If 1, Class=Vendor Specific Class, Driver=, 480M
		|__ Port 3: Dev 43, If 0, Class=Human Interface Device, Driver=usbhid, 1.5M
		|__ Port 6: Dev 5, If 0, Class=Human Interface Device, Driver=usbhid, 1.5M
		|__ Port 7: Dev 6, If 0, Class=Vendor Specific Class, Driver=usbfs, 480M
		|__ Port 7: Dev 6, If 1, Class=Vendor Specific Class, Driver=, 480M
	/:  Bus 03.Port 1: Dev 1, Class=root_hub, Driver=ehci-pci/2p, 480M
	    |__ Port 1: Dev 2, If 0, Class=Hub, Driver=hub/6p, 480M
	/:  Bus 02.Port 1: Dev 1, Class=root_hub, Driver=xhci_hcd/2p, 5000M
	    |__ Port 2: Dev 3, If 0, Class=Mass Storage, Driver=usb-storage, 5000M
	/:  Bus 01.Port 1: Dev 1, Class=root_hub, Driver=xhci_hcd/2p, 480M
	    |__ Port 1: Dev 3, If 0, Class=Hub, Driver=hub/4p, 480M

It prints it out information about USB devices in a tree format, showing which hub devices are plugged in and to what hub. 5000M means USB3 and 480M is USB2.


	/:  Bus 02.Port 1: Dev 1, Class=root_hub, Driver=xhci_hcd/2p, 5000M
	    |__ Port 2: Dev 3, If 0, Class=Mass Storage, Driver=usb-storage, 5000M

As you can see the Mass Storage is plugged into the USB3 port, yaay.

P.S It turns out that the port has a 'SS' written on the outside which means USB3 >.>
