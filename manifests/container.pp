
include apt
apt::ppa { 'ppa:chris-lea/node.js': }

package { ['nodejs', 'build-essential']:
  ensure => 'installed',
  require => Class['apt']
}
