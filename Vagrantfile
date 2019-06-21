VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "debian/stretch64"
    config.vm.hostname = "workstation"
    config.vm.network :private_network, ip: "192.168.100.200"
    config.ssh.insert_key = false # important

    config.vm.provider :virtualbox do |v|
      v.name = "workstation"
      v.memory = 1024
      v.cpus = 1
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--ioapic", "on"]
    end
end
