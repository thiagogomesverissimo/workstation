VAGRANTFILE_API_VERSION = "2"
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'libvirt'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "generic/debian10"
    config.vm.hostname = "workstation"
    config.vm.define :"workstation" 
    config.vm.network :private_network, ip: "192.168.100.200"
    config.ssh.insert_key = false # important

    config.vm.provider :libvirt do |v|
      v.memory = 1024
      v.cpus = 1
      v.default_prefix = "thiago"
    end
end
