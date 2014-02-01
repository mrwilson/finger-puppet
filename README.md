## finger-puppet

  finger-puppet allows execution of puppet manifests like scripts, and accepts both stdin or commandline arguments. These features allows you to leverage puppet's configuration management system to create idempotent scripts.

## Using finger-puppet

  `finger-puppet` runs a puppet file as if it was running `puppet apply --modulepath=/etc/puppet/modules file.pp`.
  In addition to this, it exposes the entire input as a top-level variable through facter (`$::input`)
  
  See `examples/` for different types of script.
  
## Motivation

  As part of investigating [serf](http://serfdom.io), the original `finger-puppet` exposed the serf variables too, to enable using puppet scripts as event handlers for serf. This grew into evaluating puppet manifests as actual scripts rather than part of a whole system.

## TODO

* Serf integration, pass through `SERF_EVENT` etc. into facter (already spiked, but needs tidying up)
* Testing
