#!/usr/bin/finger-puppet

#  Add multiple entries to /etc/hosts if it doesn't exist
#
#  Usage: ./add_hosts.pp [[<hostname> <ip>], ...]

$::input.split('\s').slice(2) |$host, $ip| {

  host { $host: ip => $ip, ensure => present }

}
