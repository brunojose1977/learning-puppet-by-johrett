# Instala e configura um Puppet Server
#
# @summary Instala e configura um Puppet Server
#
# @example
#   include profiles::puppet::server

class profiles::puppet::server (
  String $server_version   = '5.5.8.el7',
  String $puppetdb_host    = $trusted['certname'],
  String $puppetca_host    = $trusted['certname'],
  String $main_server      = $trusted['certname'],
  Boolean $enable_puppetca = true,
  String $java_args        = '-Xms512m -Xmx512m',
) {

  if 'linux' == $facts['kernel'] {

    include profiles::linux::jvm

    class { 'puppetserver':
      version     => $server_version,
      java_args   => $java_args,
      enable_ca   => $enable_puppetca,
      ca_server   => $puppetca_host,
      main_server => $main_server,
      require     => [
        Class['profiles::linux::jvm'],
      ],
    }

 /*
    class { 'puppetdb::master::config':
      puppetdb_server             => $puppetdb_host,
      puppetdb_soft_write_failure => true,
      manage_storeconfigs         => true,
      manage_report_processor     => true,
      enable_reports              => true,
    }
*/

    firewalld::custom_service{'puppet':
      short       => 'puppet',
      description => 'Puppet Agent access to Puppet Server',
      port        => [
        {
          'port'     => '8140',
          'protocol' => 'tcp',
        },
        {
          'port'     => '8140',
          'protocol' => 'udp',
        },
      ],
    }

    firewalld_service { 'Allow Puppet in Public zone':
      ensure  => present,
      service => 'puppet',
      zone    => 'public',
    }

    /* 
    augeas { 'disable_puppet_warning_deprecation':
      context => '/files/etc/puppetlabs/puppet/puppet.conf',
      changes => 'set main/disable_warnings deprecations',
    }
    */
  }
}
