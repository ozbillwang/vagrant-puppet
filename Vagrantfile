VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise64"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box "
  config.vm.provision :shell, :path => "upgrade_puppet.sh"
  config.vm.provision :puppet do |puppet|
    puppet.module_path = "modules"
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "vagrant-nodes.pp"
    puppet.options = ['--verbose']
  end

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--rtcuseutc", "on"]
  end
  
  config.vm.define :www do |config|
     config.vm.box = "precise64"
     config.vm.host_name = "www.example.dev"
     config.vm.network :private_network, ip: "10.1.1.2"
     config.vm.provision :puppet do |puppet|
       puppet.module_path = "modules"
       puppet.manifests_path = "manifests"
       puppet.manifest_file  = "vagrant.pp"
       puppet.options = ['--verbose']
    end
  end
  
end



