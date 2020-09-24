vagrant plugin list > tmpFile 
set /p installedVagrantPlugins= < tmpFile 

ECHO.%installedVagrantPlugins% | FIND /I "vagrant-vbguest">Nul && ( Echo.Guest additions plugin installed already ) || ( vagrant plugin install vagrant-vbguest )
ECHO.%installedVagrantPlugins% | FIND /I "vagrant-disksize">Nul && ( Echo.Disk size plugin installed already ) || ( vagrant plugin install vagrant-disksize )

vagrant up