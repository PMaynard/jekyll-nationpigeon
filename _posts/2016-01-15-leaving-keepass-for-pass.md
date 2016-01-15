---
date: 2016-01-15 13:00:00
layout: post
slug: leaving-keepass-for-pass
title: Leaving KeePassX for pass
categories:
- linux
---
I've been using KeePassX for over a year now and have found it to be a most helpful tool. I've used it everyday since I moved to it. Highly recommend it. All things get boring and small problems become annoying problems. When using KeePass on more than one device with a file syncing service, KeePass kept complaining about locks which were lies, normally I can ignore it. But at times it can get confusing, then I end up with missing passwords. KeePass is not a small program and simply messes with my workspace-foo. Enter **[pass](http://www.passwordstore.org/)**!! 

Some of pass's key features for me are: 

- Unix philosophy (Do One Thing and Do It Well).
- Uses GnuPG to encrypt passwords and meta data.
- Git support. (Works well with *dropbox/seafile*, et.al too)
- [dmenu support](http://tools.suckless.org/dmenu/scripts/).
- [Android support](https://github.com/zeapo/Android-Password-Store/blob/HEAD/README.md)

It drops nicely into my work flow, up to my neck in terminal windows avoiding GUI/X applications. I can get a password into my clipboard (and have the clipboard cleared and restored after 45s) with as little as three key presses. Without the need to load up any GUI or use my mouse.That's not to say pass does not support GUI ([QtPass](http://www.passwordstore.org/)). If I so wanted I could have it working within [firefox](https://github.com/jvenant/passff#readme)

![dmenu pass](/images/posts/pass_dmenu.png)

The above image is pass working with dmenu. I can enter a search term, hit return and the password will be in my clipboard.

But what if you have amassed a large collection of passwords with another system, fear not! For pass has importers for LastPass, KeePass2/X and [more](http://www.passwordstore.org/#migration).

I wish KeePass all the best and hope that pass will continue to improve and develop. Goodbye KeePass, all hail pass. The standard unix password manager!
