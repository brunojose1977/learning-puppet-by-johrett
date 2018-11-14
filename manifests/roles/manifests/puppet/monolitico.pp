#
# Configuracao de um Puppet Server monolitico, para iniciar uma nova
# infraestrutura.
#
# Componentes:
# - Puppet Server CA
# - Puppet DB
# - ActiveMQ
# - MCollective client e server
# - Puppet Board
# - PostgreSQL
# - R10k
#

class roles::puppet::monolitico {

  include profiles::base::linux
  #include profiles::puppet::db::aio
  #include profiles::puppet::r10k
  include profiles::puppet::server
  include profiles::puppet::activemq
  include profiles::puppet::mco::client
  #include profiles::puppet::board


  Class['profiles::base::linux']
  #-> Class['profiles::puppet::db::aio']
  #-> Class['profiles::puppet::r10k']
  -> Class['profiles::puppet::server']
  -> Class['profiles::puppet::activemq']
  -> Class['profiles::puppet::mco::client']
  #-> Class['profiles::puppet::board']

}
