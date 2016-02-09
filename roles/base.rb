name 'base'
description 'Base configs applied to all systems'

run_list(
  "recipe[ohai]",
  "recipe[chef-client::delete_validation]",
  "recipe[chef-client]",
  "recipe[zsh]",
  "recipe[git]",
  "recipe[users]",
  "recipe[vim]",
  "recipe[sudo]",
  "recipe[ntp]",
  "recipe[resolver]",
  "recipe[lvm]",
  "recipe[build-essential]",
  "recipe[ruby]",
  "recipe[rsyslog::client]",
  "recipe[logwatch]",
  "recipe[logrotate]",
  "recipe[tmux]",
  "recipe[man]",
  "recipe[openssh]",
  "recipe[rsync]",
  "recipe[postfix]",
  "recipe[munin::client]"
)


default_attributes(
  "chef-client" => {
    "server_url" => "https://chefserver.acentauri.net/organizations/acentauri",
    "validation_client_name" => "acentauri-validator"
  },
  "authorization" => {
    "sudo" => {
      "groups" => ["admin", "wheel"],
      "users" => ["kshk"]
    }
  },
  "postfix" => {
    "mail_type" => "client",
    "mydomain" => "acentauri.net",
    "myorigin" => "acentauri.net",
    "relayhost" => "[smtp.int.acentauri.net]",
    "smtp_use_tls" => "no"
  },
  "resolver" => {
    "nameservers" => ["8.8.8.8", "8.8.8.4"],
    "search" => "int.acentauri.net"
  },
  "ntp" => {
    "servers" => ["time.int.acentauri.net"]
  }

)
