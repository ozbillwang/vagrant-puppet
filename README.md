vagrant-puppet
==============

Vagrant with puppet provision

* install Vagrant, librarian-puppet and bundler.
```
Vagrant (https://docs.vagrantup.com/v2/installation/) - Create and configure lightweight, reproducible, and portable development environments.
librarian-puppet (https://github.com/rodjek/librarian-puppet) - Librarian-puppet manages your modules/ directory for you based on your Puppetfile
bundler (http://bundler.io/bundle_install.html) - Make sure all dependencies in your Gemfile are available to your application.
```
* clone the repository 
```
git clone https://github.com/ozbillwang/vagrant-puppet.git
```
* cd vagrant-puppet
* bundle install  
* librarian-puppet install
* vagrant up www
* vagrant ssh www

That's all. You can access the website now, url is http://192.168.50.50

Test logstash-elasticsearch-kibana
* vagrant up logstash
* vagrant up elasticsearch
* Vagrant ssh logstash
* vagrant ssh elasticsearch


