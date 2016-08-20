#!/bin/sh

packer build \
       -var 'iso_file=iso/VMware-VMvisor-Installer-6.0.0.update01-3029758.x86_64.iso' \
       -var 'iso_checksum_type=sha1' \
       -var 'iso_checksum=e2b73cf0bb3859b49643750bf21cab802a6a6918' \
       packer-esxi.json
