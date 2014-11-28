#!/bin/bash

# http://blog.doismellburning.co.uk/2013/01/19/upgrading-puppet-in-vagrant-boxes/

DEB="puppetlabs-release-precise.deb"
DEB_PROVIDES="/etc/apt/sources.list.d/puppetlabs.list" # Assume that this file's existence means we have the Puppet Labs repo added

if [ ! -e $DEB_PROVIDES ]
then
    # Print statement useful for debugging, but automated runs of this will interpret any output as an error
    # print "Could not find $DEB_PROVIDES - fetching and installing $DEB"
    wget -q http://apt.puppetlabs.com/$DEB
    sudo dpkg -i $DEB
fi
sudo apt-get update
sudo apt-get install --yes puppet
