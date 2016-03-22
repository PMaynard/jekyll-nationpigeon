---
date: 2016-03-21 11:11:00
layout: post
slug: lxc-containers-and-rtorrent 
title: LXC Containers and rTorrent
categories:
- linux
---
Install LXC stuff on the host machine.
	
	apt install lxc 

Configure a network bridge, this will not be NATed so it will appear on the network as a host device: 

	auto br0
	iface br0 inet dhcp
        	bridge_ports eth0
	        bridge_fd 0
	        bridge_maxwait 0

Append the network config to the defaults */etc/lxc/default.conf*:

	lxc.network.type = veth
	lxc.network.flags = up
	lxc.network.link = br0

If you want to store the containers in a non-default location. Set the path in */etc/lxc/lxc.conf*

	lxc.lxcpath = /data1/LXC/

Create the container:

	lxc-create -t download -n torrent

Get tun for the VPN and mount some of the host's directories.
Append this to */data1/LXC/torrent/config* or the default location.

	lxc.mount.entry = /data1/Torrents Torrents none rw,bind 0 0
	lxc.cgroup.devices.allow = c 10:200 rwm

Start the container and attach to the console:

	lxc-start -n torrent
	lxc-attach -n torrent

From inside the container install some things we need:

	apt install openvpn rtorrent screen openssh-server vim ufw 

Create the tun mapping:	

	mkdir /dev/net
	mknod /dev/net/tun c 10 200
	chmod 0666 /dev/net/tun

Set up ssh access, new user with sudo, ufw etc.etc.
                                                                              
In .rtorrent.rc add: 

	scgi_port = 0.0.0.0:5000

And in nginx either container or localhost add scgi proxy for things like transdroid.

        location /RPC2 {
                scgi_pass   192.168.0.12:5000;
                include     scgi_params;
                scgi_param  SCRIPT_NAME  /RPC2;
        }

Now you have a container which downloads from a VPN and exposes its XML RPC to the network.

