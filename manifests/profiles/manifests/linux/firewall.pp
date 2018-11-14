# class profiles::linux::firewall
class profiles::linux::firewall {

  class { 'firewalld':
    default_zone => 'public',
  }

  firewalld_zone { 'public':
    ensure           => present,
    target           => '%%REJECT%%',
    purge_rich_rules => true,
    purge_services   => true,
    purge_ports      => true,
  }

  firewalld_service { 'Allow SSH in Public zone':
    ensure  => present,
    service => 'ssh',
    zone    => 'public',
  }
}
