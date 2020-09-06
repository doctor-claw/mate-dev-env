# Ubuntu MATE development environment

Vagrant configuration and Ansible playbook to provision an instance of Ubuntu MATE 18.04 within VirtualBox, installed with a set of common development tools:
* VirtualBox Guest Additions
* Docker
* Terraform
* Visual Studio Code + extensions
* SmartGit
* node.js
* Postman

Tested with Vagrant 2.2.10 and VirtualBox 6.0.14

## How to install

**Install vagrant**: https://www.vagrantup.com/downloads
(note: do not use the Ubuntu package manager, download from the Vagrant website)

**Install virtualbox**: https://www.virtualbox.org/wiki/Downloads

## Windows 

From a command prompt run
`CreateDevEnvVM.bat`

This will install VirtualBox Guest Additions if you don't already have it, and then it will begin provisioning the VM.
When the VM is ready, the Ubuntu MATE login screen will be shown. The user **vagrant** has the password **vagrant*.*

## Linux

From a shell, check whether the VirtualBox Guest Additions are already installed:

`vagrant plugin list | grep vagrant-vbguest`

If `vagrant-vbguest` is not found, install the Guest Additions:

`vagrant plugin install vagrant-vbguest`

When this is installed, the VM can be provisioned:

`vagrant up`