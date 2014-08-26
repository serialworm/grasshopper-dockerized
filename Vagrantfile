# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "trusty"

  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network "private_network", ip: "10.10.10.13"
  config.vm.synced_folder ".", "/src", type: "nfs"
  config.vm.provision :shell, :path => "bin/bootstrap_puppet.sh"
  config.vm.provision "puppet" do |puppet|
    puppet.module_path = "modules"
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "host.pp"
    puppet.options = [
        '--verbose',
        '--debug'
     ]
  end

end
