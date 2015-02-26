Vagrant.configure("2") do |config|
     config.vm.define "qa" , autostart: false do |qa|
         qa.ssh.forward_agent = true
         qa.vm.box="trusty"
         qa.vm.hostname = "test"
         qa.vm.network "public_network", bridge: 'en0: Wi-Fi (AirPort)'
         qa.vm.network "forwarded_port", guest: 4444, host: 4444
         qa.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box"

         qa.vm.provider "virtualbox" do |vb|
             vb.memory = 2096
         end

         qa.vm.provision "ansible" do |ansible|
             ansible.playbook = "environment/vagrant/playbook-qa.yml"
         end
     end
end
