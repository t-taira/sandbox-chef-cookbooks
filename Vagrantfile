# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = "sandbox"

  config.vm.box = "Berkshelf-CentOS-6.3-x86_64-minimal"
  config.vm.box_url = "https://dl.dropbox.com/u/31081437/Berkshelf-CentOS-6.3-x86_64-minimal.box"

  config.vm.network :private_network, ip: "33.33.33.10"

  #config.vm.synced_folder "./", "/vagrant", mount_options: ['dmode=777', 'fmode=666']

  config.vm.provider :virtualbox do |vb|
    vb.name = "sandbox"
  end

  config.omnibus.chef_version = :latest

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbook"
    chef.roles_path = "roles"
    chef.add_role("local")
    chef.json = {
        :mysql => {
            :server_root_password => 'rootpass',
            :server_debian_password => 'debpass',
            :server_repl_password => 'replpass'
        },
        :rbenv => {
            :user_installs => [{
                                   :user => "vagrant",
                                   :rubies => ["2.0.0-p353"],
                                   :global => "2.0.0-p353",
                                   :gems => {
                                       "2.0.0-p353" => [
                                           {:name => "bundler"}
                                       ]
                                   }
                               }]
        }
    }
  end
end