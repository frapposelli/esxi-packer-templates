#!/bin/sh
# Install ESXI MAC LEARNING DVFILTER directly from VMware website, make
# sure you have internet connection available or change the URL to a local
# one.

os_ver=$(uname -r | sed -rn 's/.*([0-9])\.[0-9].*\.[0-9].*/\1/p')

# This VIB is no longer needed with vSphere 7
if [ "$os_ver" -gt 6 ] ; then
  exit 0
fi

esxcli software vib install -v https://download3.vmware.com/software/vmw-tools/esxi-mac-learning-dvfilter/esx-dvfilter-maclearn-6.5.0.vib -f
