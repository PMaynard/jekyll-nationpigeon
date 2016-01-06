---
date: 2016-01-01 10:00:00
layout: post
slug: debain-fresh-install
title: Part One - Fresh Install 
categories:
- Debian Server Series
---
This is the first part in my documentation series about managing a Debain server for fun and profit.

Install some packages

    apt-get install vim htop fail2ban ufw nginx git jekyll logwatch apticron ntp screen weechat stow vnstat vnstati sudo

Add user

    useradd osaka
    usermod -a -G sudo osaka

Select the correct time zone: 

	dpkg-reconfigure tzdata

Make sure the time is correct:

	service ntp stop
	ntpd -gq
	service ntp start

Setup exim to send emails, for status reporting etc.

	dpkg-reconfigure exim4-config

Select 'internet site' and keep defaults, enter your domain when asked.
Alias the root account to your external email address. It could also be the new user you just created.

	echo "root: user@example.com" >> /etc/aliases

Setup firewall

    ufw allow 22/tcp
    ufw allow 80/tcp 
    ufw allow 443/tcp

Force key based ssh authentication: 

    PubkeyAuthentication yes
    ChallengeResponseAuthentication no 
    PasswordAuthentication no        

Setup auto update by uncommenting to below in */etc/apt/apt.conf.d/50unattended-upgrades* this will auto update stable, stable-updates, proposed-updates as well as Debian-Ssecurity:

	"o=Debian,a=stable";
	"o=Debian,a=stable-updates";
	"o=Debian,a=proposed-updates";
	"origin=Debian,codename=${distro_codename},label=Debian-Security";

Reconfigure unattended-upgrades and select yes. This will create the file */etc/apt/apt.conf.d/20auto-upgrades*, which lets apt know that it should update.

	dpkg-reconfigure -plow unattended-upgrades

Setup some websites:

    git clone ... /home/osaka/sites/$SITE
    jekyl build
    ln -s /home/osaka/stites/$SITE/public_html /var/www/$SITE

Craft an NGINX config file, a bit like this:

    server {
            listen       443 ssl;
            server_name  nationpigeon.com;

            ssl_certificate /etc/letsencrypt/live/nationpigeon.com/fullchain.pem;
            ssl_certificate_key /etc/letsencrypt/live/nationpigeon.com/privkey.pem;

            location / {
                    root   /var/www/nationpigeon.com;
                    index  index.html;
            }

            error_page 404 /404.html;

            location = /404.html {
                    root  /var/www/nationpigeon.com;
            }

    }

Then enable the site:

    ln -s /etc/nginx/sites-avilable/$SITE /etc/nginx/sites-enabled/$SITE

Generate some SSL certs:

    git clone https://github.com/letsencrypt/letsencrypt
    cd letsencrypt
    service nginx stop
    ./letsencrypt-auto certonly --standalone -d nationpigeon.com -d www.nationpigeon.com

In the second part of this series I will cron the renewal of the certs. For now there is a helpful service which will notify you when your cert will expire via email. <https://certificatemonitor.org>
