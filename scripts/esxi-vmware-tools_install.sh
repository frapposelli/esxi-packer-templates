# Install VMware Tools for Nested ESXi, directly from VMware website, make
# sure you have internet connection available or change the URL to a local
# one.
esxcli network firewall ruleset set -e true -r httpClient
esxcli software vib install -v http://download3.vmware.com/software/vmw-tools/esxi_tools_for_guests/esx-tools-for-esxi-9.7.2-0.0.5911061.i386.vib -f
