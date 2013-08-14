---
comments: true
date: 2011-01-21 19:22:28
layout: post
slug: ssh-login-with-out-password
title: ssh login without password
wordpress_id: 442
categories:
- Linux
tags:
- security
- SSH
---

If you frequently use ssh to login or run commands on a remote machine, it might be helpful for you if you did not have to not enter a password each time you want to connect to the server, this can be done by uploading your public ssh key to the servers ssh files.

With a simple command that will upload your public key to the server, create and set all required files and permissions.  You will need to have your keypairs ready, if you do not, they are located in **~/.ssh/id_rsa** and **~/.ssh/id_rsa.pub**, you can generate them using **ssh-keygen -t rsa**

To copy the keys securely to the server use: 


    
    ssh-copy-id -i ~/.ssh/id_rsa.pub username@remote-machine



If you use a non standard port number you will need to put quotes around the arguments. 


    
    ssh-copy-id '-p XXX -i ~/.ssh/id_rsa.pub username@remote-machine'



You need to have the following set in your sshd_config**:**
**RSAAuthentication yes
PubkeyAuthentication yes**


[![Elfin Lied Lucy - With a Gun](/uploads//2011/01/Elfen.Lied_.Wallpaper.120708-150x150.jpg)](/uploads//2011/01/Elfen.Lied_.Wallpaper.120708.jpg)


-Pete 
