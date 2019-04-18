Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.network "private_network", ip: "172.25.249.10"
  config.vm.hostname = "zabbix"
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provision.yml"
  end
  config.vm.synced_folder ".", "/share"

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end
end
