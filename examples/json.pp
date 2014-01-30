#!/usr/bin/finger-puppet

#  Parse and process json input into hosts file
#
#  Usage: ./json.pp '{ "foo": { "hostname": "foo", "ip": "xxxx" }, ... }'
#
#  parsejson requires puppetlabs-stdlib (https://github.com/puppetlabs/puppetlabs-stdlib)

define render_host($hostname, $ip) {
  host { $hostname:
    ensure => present,
    ip     => $ip
  }
}

$json = parsejson($::input)
create_resources(render_host, $json)
