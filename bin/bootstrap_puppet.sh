#!/bin/bash

if [ ! -e /tmp/puppet-updated ]; then
  wget -O /tmp/puppetlabs-release-trusty.deb http://apt.puppetlabs.com/puppetlabs-release-trusty.deb
  dpkg -i /tmp/puppetlabs-release-trusty.deb
  apt-get update
  apt-get --assume-yes install puppet
fi
