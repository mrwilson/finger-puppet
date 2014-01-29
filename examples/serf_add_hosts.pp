#!/usr/bin/finger-puppet

if $::serf_event == "member-join" {
  include hostsfile
}

class hostsfile {
  $input = split($::input, '\s')

  host { $input[0]:
    ensure => present,
    ip     => $input[1],
  }

}
