node default {
  include '::ntp'
}
node 'www' {
  include apache
}

node 'logstash' {
   include kibana
   include logstash
}

node 'elasticsearch' {
   include elasticsearch
}
