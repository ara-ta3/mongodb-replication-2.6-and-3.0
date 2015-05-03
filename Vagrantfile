# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.5-x86_64-v20140110.box"

  config.vm.define :web1 do |web|
    web.vm.network :private_network, ip: "192.168.56.101"
    web.vm.provision :shell, :path => "script/mongo26/setup.sh"
  end

  config.vm.define :web2 do |web|
    web.vm.network :private_network, ip: "192.168.56.102"
    web.vm.provision :shell, :path => "script/mongo30/setup.sh"
  end

  config.vm.define :web3 do |web|
    web.vm.network :private_network, ip: "192.168.56.103"
    web.vm.provision :shell, :path => "script/mongo30/setup.sh"
  end
end
