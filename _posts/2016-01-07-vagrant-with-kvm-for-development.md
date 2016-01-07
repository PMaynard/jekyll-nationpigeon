---
date: 2016-01-07 13:52:00
layout: post
slug: vagrant-with-kvm-for-development
title: Vagrant with KVM for development
categories:
- Linux
---
Vagrant allows for quick deployment of virtual machines for development use. It allows you to provision software, forward ports, and share development environments between people are computers.  

First install vagrant and the KVM (libvirtd) provider.

	sudo apt-get install vagrant
	sudo apt-get install libxslt-dev libxml2-dev libvirt-dev zlib1g-dev
	vagrant plugin install vagrant-libvirt

Then create a vagrant configuration file (Vagrantfile), which specifies the image to use. Make sure that you choose a libvirt image, and not the default VMware.

	Vagrant.configure(2) do |config|
	  config.vm.box = "naelyn/ubuntu-trusty64-libvirt"

	  config.vm.network "forwarded_port", guest: 8001, host: 8001
	  config.vm.network "forwarded_port", guest: 8000, host: 8000

	  config.vm.provision "shell", path: "install.sh"
	end

This config will spin up a Ubuntu based image with two ports forwarded and execute the install script when it is first created. To re-run the provisioning script (install.sh) simply call ```vagrant provision```. 

The install file is project specific, and in this case it updates the package manager and installs node and PostgreSQL. It then changes to the shared folder and installs all the dependencies for the node project. Contents of ```install.sh```:

	sudo apt-get update
	sudo apt-get install -y nodejs npm postgresql
	sudo ln -s $(which nodejs) /usr/bin/node 
	cd /vagrant 
	npm install 

And that's it Vagrant in a nutshell. All that's left to do is start the VM:

	vagrant up

It will update and install the software as specified in the install script.

	vagrant ssh
