
class server::nodejs {

  include apt
  apt::ppa { 'ppa:chris-lea/node.js': }

  package { [ 'nodejs', 'build-essential' ]:
    ensure => 'installed',
    require => Class['apt']
  }

  package { 'grunt-cli':
    ensure => 'installed',
    provider => 'npm',
    require => Package['nodejs']
  }
  package { 'pm2':
    ensure => 'installed',
    provider => 'npm',
    require => Package['nodejs']
  }
}
