# VMware [ESXi](https://www.vmware.com/products/esxi-and-esx/overview) [Packer](http://packer.io) templates


## Prerequisites

* [Packer](http://packer.io) > 0.8
* VMware Fusion or Workstation

## Build artifacts

This packer template requires to variables to be set either via command line or separate JSON file:

1. `iso_file` - is the ESXi ISO for the build (can be local or remote).
1. `iso_sha1sum` - is the SHA1 sum of the ISO you want to build.

To kick off a full build:

```shell
packer build \
       -var 'iso_file=iso/VMware-VMvisor-Installer-6.0.0-2494585.x86_64.iso' \
       -var 'iso_sha1sum=a38a9d37ea529329338de049679c1dd1687d3860' \
       packer-esxi.json
```

The Packer template and the scripts have been tested with ESXi version 5.5 and 6.0.

Default `root` password for the resulting Vagrant box is `vagrant`.

There is a convenience script provided to build a known version of the vagrant box.

```shell
./build-6.0.0.update01.sh
```

## Legal

Copyright © 2015 VMware, Inc.  All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the “License”); you may not
use this file except in compliance with the License.  You may obtain a copy of
the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an “AS IS” BASIS, without warranties or
conditions of any kind, EITHER EXPRESS OR IMPLIED.  See the License for the
specific language governing permissions and limitations under the License.
