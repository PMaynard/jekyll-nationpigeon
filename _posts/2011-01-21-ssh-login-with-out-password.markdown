--- 
wordpress_id: 442
author_login: pete
layout: post
comments: []

author: Pete
title: ssh login without password
published: true
tags: 
- security
- SSH
date: 2011-01-21 19:22:28 +00:00
categories: 
- Linux
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/wordpress/?p=442
author_url: http://nationpigeon.com
status: publish
---
If you frequently use ssh to login or run commands on a remote machine, it might be helpful for you if you did not have to not enter a password each time you want to connect to the server, this can be done by uploading your public ssh key to the servers ssh files.

With a simple command that will upload your public key to the server, create and set all required files and permissions.&nbsp; You will need to have your keypairs ready, if you do not, they are located in <strong>~/.ssh/id_rsa</strong> and <strong>~/.ssh/id_rsa.pub</strong>, you can generate them using <strong>ssh-keygen -t rsa</strong>

To copy the keys securely to the server use: 

<pre class="brush: plain">ssh-copy-id -i ~/.ssh/id_rsa.pub username@remote-machine</pre>

If you use a non standard port number you will need to put quotes around the arguments. 

<pre class="brush: plain">ssh-copy-id '-p XXX -i ~/.ssh/id_rsa.pub username@remote-machine'</pre>

You need to have the following set in your sshd_config<strong>:</strong>
<strong>RSAAuthentication yes
PubkeyAuthentication yes</strong>
<p style="text-align: center;"><a href="http://nationpigeon.com/wordpress/wp-content/uploads//2011/01/Elfen.Lied_.Wallpaper.120708.jpg"><img class="size-thumbnail wp-image-443 aligncenter" title="Elfin Lied Lucy - With a Gun" src="http://nationpigeon.com/wordpress/wp-content/uploads//2011/01/Elfen.Lied_.Wallpaper.120708-150x150.jpg" alt="Elfin Lied Lucy - With a Gun" width="150" height="150" /></a></p>
-Pete 
