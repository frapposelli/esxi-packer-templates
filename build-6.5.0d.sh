#!/bin/sh

packer build \
       -var 'iso_file=iso/VMware-VMvisor-Installer-6.5.0-5310538.x86_64.iso' \
       -var 'iso_checksum_type=sha1' \
       -var 'iso_checksum=4b89776c1984e1773a458fda9e713d06c7552a85' \
       packer-esxi.json
