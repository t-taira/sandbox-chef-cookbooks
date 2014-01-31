name "local"
description "for local development"

run_list %w(
  recipe[simple_iptables]
  recipe[site_simple_iptables]
  recipe[ruby_build]
  recipe[rbenv::user]
  recipe[mysql::client]
  recipe[mysql::ruby]
  recipe[mysql::server]
)