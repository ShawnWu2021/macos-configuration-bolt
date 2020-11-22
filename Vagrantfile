
Vagrant.configure("2") do |config|
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
    v.linked_clone = true 
  end

  #config.vm.box = "GAEV/MacOS_Catalina"
  config.vm.boot_timeout = 600 # 10 minutes
  config.ssh.password = "vagrant"
  config.vm.synced_folder ".", "/vagrant", disabled: true

  # create first linked clone of the master VM
  config.vm.define "mac1" do |m|
    m.vm.box_check_update = false
    m.vm.box = "GAEV/MacOS_Catalina"
    m.vm.define "mac1"
    # name of the virtual machine instance
    m.vm.hostname = "mac1.host.com"
    # assign a static IP
    m.vm.network "private_network", ip: "192.168.56.2"
  end

  # create first linked clone of the master VM
  config.vm.define "mac2" do |m|
    m.vm.box_check_update = false
    m.vm.box = "GAEV/MacOS_Catalina"
    m.vm.define "mac2"
    # name of the virtual machine instance
    m.vm.hostname = "mac2.host.com"
    # assign a static IP
    m.vm.network "private_network", ip: "192.168.56.3"
  end
end