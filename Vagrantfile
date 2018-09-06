Vagrant.configure("2") do |config|
  config.vm.box = "hbsmith/awslinux"
  config.vm.box_version = "2018.03.0.20180811"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network :forwarded_port, guest: 80, host: 4567
  config.vm.synced_folder ".", "/vagrant", type: "rsync", rsync__auto: true, rsync__exclude: [".git", ".vagrant", "Vagrantfile", "bootstrap.sh", "vendor", "node_modules"]
end
