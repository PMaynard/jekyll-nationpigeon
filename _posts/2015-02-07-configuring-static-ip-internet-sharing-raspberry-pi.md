---
date: 2015-02-07 18:00
published: true
layout: post
slug: configuring-static-ip-internet-sharing-raspberry-pi
title: Configuring static IP and Internet sharing on the RaspberryPI
categories:
 - Linux
 - debian
 - raspbian
 - RaspberryPI
---
With just a fresh install of raspbian, and a network cable, you too can setup your very own Raspberry PI with Internet access.  
Make sure you have the same physical setup: 

	PI (Ethernet) -> (Ethernet) Computer (Wireless or second Ethernet) -> Internet.

1. Install raspbian onto the SD card. 
2. Mount the SD card with write privileges and navigate to the file ```/etc/network/interfaces``` and set a static IP. 

	auto eth0
	iface eth0 inet static
		address 10.50.50.2
		netmask 255.255.255.0
		network 10.50.50.0
		broadcast 10.50.50.255
		gateway 10.50.50.1

3. On your computer which the PI is connected to configure the ethernet interface. This will allow you to ping and SSH into the PI.


	sudo ifconfig p5p1 10.50.50.1 up


4. Setup the Internet connection sharing on your computer using iptables. You may need to change the interfaces to match yours. Below, wlan0 is my Internet interface, and p5p1 is connected to my PI.

	sudo iptables -A FORWARD -o wlan0 -i p5p1 -s 10.50.50.0/24 -m conntrack --ctstate NEW -j ACCEPT
	sudo iptables -A FORWARD -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
	sudo iptables -t nat -F POSTROUTING
	sudo iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
	sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"

That's it, you should now be able to connect to the Internet from your PI. Note that this is a NATed connection, which means that you will not be able to connect to your PI from any machine on the network, with out a bit more work.
