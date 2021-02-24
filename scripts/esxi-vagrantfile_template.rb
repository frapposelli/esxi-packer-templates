# The contents below (if any) are custom contents provided by the
# Packer template during image build.
Vagrant.require_version '>= 2.0.0'

Vagrant.configure('2') do |config|
  # We're using the root user here.
  config.ssh.username = 'root'
  # Set default shell to SH.
  config.ssh.shell = 'sh'

  # Vagrant doesn't support insert key on ESXi so let's stick with the unsecure
  # key for now.
  config.ssh.insert_key = false

  # Do not sync default /vagrant folder on ESXi.
  config.vm.synced_folder '.', '/vagrant', disabled: true

  # We don't have NFS working inside ESXi so we flag this just in case.
  config.nfs.functional = false

  config.vm.provider "vmware_desktop" do |v|
    v.vmx['memsize'] = '4096'
    v.vmx['numvcpus'] = '2'
    # Use paravirtualized virtual hardware on VMW hypervisors.
    v.vmx["ethernet0.virtualDev"] = "vmxnet3"
    # use paravirtualized scsi hardware on VMW hypervisors.
    v.vmx['scsi0.virtualdev'] = 'pvscsi'
    # Enable nested virtualization.
    v.vmx['vhv.enable'] = 'true'
  end

  config.vm.provider :vcenter do |vcenter|
    vcenter.num_cpu = 2
    vcenter.memory = 4096
    vcenter.enable_vm_customization = false
  end
end

