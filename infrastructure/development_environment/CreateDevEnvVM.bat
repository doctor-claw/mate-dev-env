@echo off
vagrant plugin list > installedVagrantPlugins 

type installedVagrantPlugins | FIND /I "vagrant-vbguest">Nul && ( Echo.Guest additions plugin installed already ) || ( vagrant plugin install vagrant-vbguest )
type installedVagrantPlugins | FIND /I "vagrant-disksize">Nul && ( Echo.Disk size plugin installed already ) || ( vagrant plugin install vagrant-disksize )

vagrant up