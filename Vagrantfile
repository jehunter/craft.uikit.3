Vagrant.configure("2") do |config|
  config.vm.box = "mvbcoding/awslinux"
  config.vm.box_version = "2017.03.0.20170401"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network :forwarded_port, guest: 80, host: 4567
  config.vm.synced_folder ".", "/vagrant", type: "rsync", rsync__auto: true, rsync__exclude: [".vagrant", "Vagrantfile", "bootstrap.sh"]
end
