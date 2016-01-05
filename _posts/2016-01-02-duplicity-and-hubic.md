---
date: 2016-01-02 10:00:00
layout: post
slug: duplicity-and-hubic
title: Duplicity and Hubic
categories:
- Linux
tags:
- backup 
---
Install the dependencies (*See note at end*).

	sudo apt-get install duplicity 
	sudo pip install pyrax

Create a ~/.hubic_credentials with the format below.
Get the client ID and secret from the Hubic website under 'My Account -> Developers', add an application with a descriptive name and set the redirect domain to 'http://localhost/.


	[hubic] 
	email = <hubicemailaddress>
	password = <hubicpassword>
	client_id = <hubicclientid> 
	client_secret = <hubicclientsecret>
	redirect_uri = http://localhost/

You should now be able to use duplicity to backup to the Hubic storage.

	duplicity --no-encryption Some/Local/File cf+hubic://remote_huic_location

~~**NOTE**: Maybe you need the hubic library installed <https://hubic.com/en/downloads>~~ Works with out the hubic library.

