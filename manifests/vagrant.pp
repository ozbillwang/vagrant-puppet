class basenode {
  include '::ntp'
}

node 'www' {
  include basenode
  include apache
}

node 'logstash' {
  include basenode
  include kibana
  include logstash
  include haproxy
}

node 'elasticsearch' {
  include basenode
  include elasticsearch
}
