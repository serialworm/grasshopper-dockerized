#!/bin/bash

if [ ! -e /tmp/puppet-updated ]; then
  wget -O /tmp/puppetlabs-release-precise.deb http://apt.puppetlabs.com/puppetlabs-release-precise.deb
  dpkg -i /tmp/puppetlabs-release-precise.deb
  apt-get update
  apt-get --assume-yes install puppet
fi
