
package { [ 'build-essential', 'docker.io']:
  ensure => 'installed',
  before => Exec['/src/bin/docker.sh']
}

file { '/src/bin/docker.sh':
  ensure => file,
  mode => 755
}
exec { '/src/bin/docker.sh':
  command => '/src/bin/docker.sh',
  require => File['/src/bin/docker.sh']
}
