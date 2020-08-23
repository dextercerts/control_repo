node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }  
  class { 'ntp':
    servers => ['3.ae.pool.ntp.org','0.asia.pool.ntp.org','2.asia.pool.ntp.org']
  }  
}
node 'puppetm.dexterslab.local' {
  include role::master_server
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
