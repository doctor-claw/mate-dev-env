#!/bin/bash

if which vagrant &> /dev/null
then echo "Found vagrant..."
else echo "Cannot find vagrant on PATH! Please ensure you have downloaded vagrant and added it to your PATH"; exit;
fi

if which virtualbox &> /dev/null
then echo "Found virtualbox..."
else echo "Cannot find virtualbox on PATH! Please ensure you have downloaded virtualbox and added it to your PATH"; exit;
fi

if vagrant plugin list|grep vbguest &> /dev/null
then echo "vbguest plugin installed in vagrant.";
else echo "vbguest plugin not found in vagrant. Installing..."; vagrant plugin install vagrant-vbguest;
fi

if vagrant plugin list|grep disksize &> /dev/null
then echo "disksize plugin installed in vagrant.";
else echo "disksize plugin not found in vagrant. Installing..."; vagrant plugin install vagrant-disksize;
fi

vagrant up
