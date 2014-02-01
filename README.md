# Chef Cookbooks for Development

## Description

Configuration listed below:

 * MySQL password
 * Ruby version
 * open 80, 22, 433, 3306, 3000 port by iptables

## Setup

### Clone Cookbooks

```sh
$ git clone git@github.com:t-taira/sandbox-chef-cookbooks
$ cd sandbox-chef-cookbooks
```

### Setting Vagrantfile

Edit `Vagrantfile`:

```json
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
```

### Vagrant

```sh
$ vagrant up
```
