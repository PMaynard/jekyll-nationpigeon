---
date: 2016-03-21 14:07:00
layout: post
slug: letsencrypt-owntrack 
title: Configuring OwnTrack to work With letsencrypt
categories:
- linux
---
These are some notes on getting OwnTracks to work with LetsEncrypt.

Install mosquitto (MQTT Broker) and create a username password combination.

	apt install mosquitto mosquitto-clients
	mosquitto_passwd -c /etc/mosquitto/passwd <username>

Using the letsencrypt client generate certs only as standalone.

	./letsencrypt-auto certonly --standalone -d <domain>

Navigate to */etc/letsencrypt/live/<domain>* and copy them to mosquitto.

	cp chain.pem /etc/mosquitto/certs/
	cp cert.pem /etc/mosquitto/certs/
	cat {privkey,fullchain}.pem >> /etc/mosquitto/certs/keyfile.pem

In the mosquitto.conf add the following lines.

	cafile /etc/mosquitto/certs/chain.pem
	certfile /etc/mosquitto/certs/cert.pem
	keyfile /etc/mosquitto/certs/keyfile.pem
	password_file /etc/mosquitto/passwd

You might want some more logging or to listen on an alternative port (default on debian was 1883) *man mosquitto.conf*.

Check it works by subscribbing to the events using:
	
	mosquitto_sub -h localhost -p 1883 -v -t 'owntracks/#'

And manually sending an event with:

	mosquitto_pub -h xconf.net -p 1883 -t 'owntracks/test' -m 'hello' -u <username> -P <securepassword>

You can add the Android application using the built in CA certificates as it is verified with letsencrypt.
