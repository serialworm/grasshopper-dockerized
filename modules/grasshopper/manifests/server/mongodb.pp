
class server::mongodb {

  include apt

  $packages = [
    'mongodb-org',
    'mongodb-org-server',
    'mongodb-org-mongos',
    'mongodb-org-shell',
    'mongodb-org-tools'
  ]

  file { '/tmp/mongodb.sh':
    ensure => file,
    mode => 755,
    source => 'puppet:///modules/grasshopper/scripts/mongodb.sh'
  }
  exec { 'setup':
    command => '/tmp/mongodb.sh',
    require => File['/tmp/mongodb.sh']
  }

  package { $packages:
    ensure => 'installed',
    require => Exec['setup']
  }

  Exec['setup']
   -> Class[apt::update]
   -> Package[$packages]
}


