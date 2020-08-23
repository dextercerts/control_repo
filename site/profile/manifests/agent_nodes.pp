class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.dexterslab.local':}
  dockeragent::node {'db.dexterslab.local':}
  host {'web.dexterslab.local':
    ensure => present,
    ip     => '172.18.0.2',
  }
  host {'db.dexterslab.local':
    ensure => present,
    ip     => '172.18.0.3',
  }
}
