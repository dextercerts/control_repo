class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.dexterslab.local'}
  dockeragent::node {'db.dexterslab.local'}
}
