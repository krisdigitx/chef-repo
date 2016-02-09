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
  'ntp' => {
    'servers' => ['0.uk.pool.ntp.org', '1.uk.pool.ntp.org']
  }
)
