--- 
wordpress_id: 817
author_login: pete
layout: post
comments: []

author: Pete
title: Debian Bash Auto Completion
published: true
tags: 
- debian
- bash
- auto completion
- Raspberry Pi
date: 2012-06-20 18:24:11 +01:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=817
author_url: http://nationpigeon.com
status: publish
---
Install the bash auto completion package.
<pre class="brush: bash">sudo apt-get install bash-completion</pre>
Uncomment the following in <strong>/etc/bash.bashrc</strong> to enable to auto completion. You will need to open a new terminal after doing this.
<pre class="brush: bash">sudo vi /etc/bash.bashrc</pre>
<pre class="brush: bash"># enable bash completion in interactive shells
if [ -f /etc/bash_completion ] &amp;&amp; ! shopt -oq posix; then
    . /etc/bash_completion
fi</pre>
You should now be able to hit tab and have commands automatically completed.
Try it with <strong>apt-get in<tab></strong>
