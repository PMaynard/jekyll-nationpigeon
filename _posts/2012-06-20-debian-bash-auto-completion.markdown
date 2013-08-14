---
comments: true
date: 2012-06-20 18:24:11
layout: post
slug: debian-bash-auto-completion
title: Debian Bash Auto Completion
wordpress_id: 817
categories:
- Linux
tags:
- auto completion
- bash
- debian
- Raspberry Pi
---

Install the bash auto completion package.

```sudo apt-get install bash-completion```

Uncomment the following in _/etc/bash.bashrc_ to enable to auto completion. You will need to open a new terminal after doing this.

```sudo vi /etc/bash.bashrc```

    # enable bash completion in interactive shells
    if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
        . /etc/bash_completion
    fi

You should now be able to hit tab and have commands automatically completed.
Try it with ```apt-get in<tab>```
