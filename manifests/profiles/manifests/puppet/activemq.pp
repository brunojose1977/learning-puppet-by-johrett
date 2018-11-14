# Instala e configura o ActiveMQ
#
# @summary Instala e configura o ActiveMQ
#
# @example
#   include profiles::puppet::activemq

class profiles::puppet::activemq(
  String $version            = '5.15.4',
  String $checksum           = '5ff48112978a3d1a40162b55eab72a32',
  String $checksum_type      = 'md5',
  String $memory             = '-Xms1g -Xmx1g',
  String $home               = '/opt/activemq',
  String $user               = 'activemq',
  String $group              = 'activemq',
  Boolean $mco_config        = true,
  String $mco_user           = 'mcollective',
  String $mco_pass           = 'p4ssw0rd',
  String $system_config_path = '/etc/sysconfig',
){
  class  { 'activemq':
    version            => $version,
    checksum           => $checksum,
    checksum_type      => $checksum_type,
    memory             => $memory,
    home               => $home,
    user               => $user,
    group              => $group,
    mco_config         => $mco_config,
    mco_user           => $mco_user,
    mco_pass           => $mco_pass,
    system_config_path => $system_config_path,
  }

  firewalld_port { 'Open port 61613 in the public zone':
    ensure   => present,
    zone     => 'public',
    port     => 61613,
    protocol => 'tcp',
  }

  firewalld_port { 'Open port 61614 in the public zone':
    ensure   => present,
    zone     => 'public',
    port     => 61614,
    protocol => 'tcp',
  }

}
