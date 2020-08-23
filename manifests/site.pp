node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }  
}
node 'puppetm.dexterslab.local' {
  include role::master_server
}
