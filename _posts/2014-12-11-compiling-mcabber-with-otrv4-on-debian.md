
---
date: 2014-12-11 22:56:39
published: true
layout: post
slug: compiling-mcabber-with-otrv4-on-debian
title:  Compiling mcabber with OTRv4 on Debian
category: Linux, XMPP, OTR, debian, encryption
---
Currently OTRv4 ([libotr5-dev](https://packages.debian.org/wheezy-backports/libotr5-dev)) is only in testing, which means you need to add the backports repository.

__/etc/apt/sources.list__

	deb http://ftp.debian.org/debian/ wheezy-backports main 

Update and install the required libraries to compile mcabber with OTR, PGP and UTF-8 support.

	sudo apt-get install build-essential libloudmouth1-dev libgpgme11-dev libncursesw5-dev libotr5-dev

Run the configuration script, you need to specify OTR or it will not compile support for it.

	./configure --enable-otr
	make
	sudo make install

Confirm everything has compiled and installed correctly.

	mcabber -V

Create the config directories, along with a place to store your OTR keys.

	mkdir -p ~/.mcabber/otr
	chmod 0700 ~/.mcabber

Create a configuration file, called __~/.mcabber/mcabberrc__. Example config file [here](http://mcabber.com/files/mcabberrc.example).

````
# Basic jabber server stuff
set jid = <UserName>
set server = <Server>
set tls = 1

# Disbale logging.
set disable_chatstates = 1
set logging = 0
set load_muc_logs = 0

# Enable OTR to always run.
set otr = 1
set otrpolicy default always
set otr_dir = "~/.mcabber/otr/"
````

Should all be working, use /help otr to get more information.

````
/OTR key
/OTR start|stop|info [jid]
/OTR fingerprint [jid [fpr]]
/OTR smpq|smpr [jid] secret

/OTR smpa [jid]
You can use the shortcut-jid "." for the currently selected contact.

/otr key
Print the fingerprint of your private key to the Status Buffer

/otr start [jid]
Open an OTR channel to the specified jid (or the currently selected contact)

/otr stop [jid]
Close the OTR channel to the specified jid (or the currently selected contact)

/otr info [jid]
Show current OTR status for the specified jid (or the currently selected contact)

/otr fingerprint [jid [fpr]]
Show the active fingerprint of an OTR channel.

If the fingerprint is provided instead of "fpr", the fingerprint will become trusted.  If you replace "fpr" by some bogus string the fingerprint will loose the trusted status.

/otr smpq [jid] secret
Initiate the Socialist Millionaires Protocol with the secret and the buddy

/otr smpr [jid] secret
Respond to the Initiation of the jid with the secret

/otr smpa [jid]
Abort the running Socialist Millionaires Protocol
````
