node 'www' {
#  include apache
  include kibana
}

node 'logstash' {
   include logstash
}

node 'elasticsearch' {
   include elasticsearch
}
