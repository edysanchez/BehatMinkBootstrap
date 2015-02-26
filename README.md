BehatMinkBootstrap
==================

Repo ready to start with [Behat](http://github.com/Behat/Behat) and [Mink Extension](http://github.com/Behat/MinkExtension)

##Installing:

```bash
$>curl -sS https://getcomposer.org/installer | php
$>php composer.phar install
```

##Running:

```bash
$>bin/behat 
```
##Vagrant Machine
The vagrant machine has 2 Gb RAM ,and the network it’s configured to forward the physical port 4444 to the VM 
so you can configure the physical machine as the selenium host in the behat config (wd_host) 

### Vagrant Machine software installed
* Firefox 34
* openjdk 7
* selenium 2.43 
* Xvfb

###Requirements

* [VirtualBox](https://www.virtualbox.org/)

* [Vagrant](https://www.vagrantup.com/)

* [Ansible](http://docs.ansible.com/intro_installation.html)

###Running the VM

vagrant up qa
