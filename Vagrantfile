# -*- mode: ruby -*-
# vi: set ft=ruby :

# Include our deploy command.
# require File.dirname(__FILE__) + '/ssh-add.rb'

Vagrant.configure("2") do |config|

  # Things you might want to modify!
  config.vm.hostname = "local"
  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--memory", "2048"]
  end
  #config.vm.customize ["modifyvm", :id, "--memory", "2048"]
  config.vm.network :private_network, ip: "192.168.50.4"
  config.vm.network :forwarded_port, guest: 80, host: 8888, auto_correct: true

  config.vm.box = "vagrant-centos64"
  config.vm.box_url = "http://stevekarsch.com/sites/default/files/vagrant-centos64.box"

  config.ssh.forward_agent = true

  config.vm.provision :puppet do |puppet|
    puppet.module_path = "puppet-modules"
    puppet.manifests_path = "puppet-manifests"
    puppet.manifest_file = "base.pp"
  end
  # NFS sharing does not work on windows, so if this is windows don't try to start it.
  #require 'rbconfig'
  #is_windows = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)
  #if not is_windows
  #  config.vm.share_folder("web", "/var/www", "www", :nfs => true)
  #else
  #  config.vm.share_folder("web", "/var/www", "www")
  #end
end
