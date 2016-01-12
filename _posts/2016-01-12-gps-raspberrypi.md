---
date: 2016-01-12 10:22:00
layout: post
slug: gps-raspberrypi
title: GPS and Raspberry Pi
categories:
- linux
---
I ordered a 56 Channel GPS Receiver (GP-20U7) from [hobbytronics](http://www.hobbytronics.co.uk/gps/gps-gp-20u7). The GPS is made by SparkFun, its tiny as you can see below. So far it is working well and was easy to get working. 

![gps module](/images/posts/gps-tiny.png)

## Cable things up

I guessed the pinout from the [datasheet](http://www.hobbytronics.co.uk/datasheets/sensors/GPS-GP-20U7.pdf). Nothing exploded.

	RPI -- GPS
	GND -> GND
	RX  -> TX
	3V  -> VCC

## Unbind serial

The RPI comes with the serial pins bound to a TTY terminal. This lets you plug it into a USB-TTL cable and use screen to control the PI. To use the PI with a device that uses serial to talk you need to unbind it first.

- Remove ```console=ttyAMA0,115200``` from ```/boot/cmdline.txt```
- Remove ```T0:23:respawn:/sbin/getty -L ttyAMA0 115200 vt100``` from ```/etc/inittab```
- Reboot.

## Test and go

Check its working with screen, you'll see the raw NMEA-0183 protocol: 
	
	sudo screen /dev/ttyAMA0 9600

Install and start gpsd: 

	sudo apt-get install gpsd gpsd-clients 
	sudo gpsd /dev/ttyAMA0 -F /var/run/gpsd.sock

Use either ```cgps -s``` for CLI, or ```xgps``` for a GUI.

![XGPS](/images/posts/xgps.png)
![cgps](/images/posts/cgps.png)

It took a good 15min for the first boot to get all the data. This is normal. After it was able to keep a solid lock inside next to a window. 
