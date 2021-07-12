Vagrant.configure("2") do |config|
  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
  config.ssh.insert_key = true
  config.vm.boot_timeout=3000
  config.vm.define :alpha do |alpha|
    alpha.vm.box = "yk0/ubuntu-xenial"
    alpha.vm.network "private_network", ip: "172.16.1.2"
    alpha.vm.hostname = "master"
  end

  config.vm.define :beta do |beta|
    beta.vm.box = "yk0/ubuntu-xenial"
    beta.vm.network "private_network", ip: "172.16.1.3"
    beta.vm.hostname = "compute1"
  end
   config.vm.provider "virtualbox" do |vb|
     vb.memory = "4096"
     vb.cpus = 2
   #  vb.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
  #   vb.customize ["modifyvm", :id, "--uartmode1", "file", File::NULL]
   end
end
