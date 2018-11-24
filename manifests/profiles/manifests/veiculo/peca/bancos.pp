class profiles::veiculo::peca::bancos{
  file { '/home/vagrant/peca_bancos.txt' :
    ensure  => 'present',
    content => 'bancos de um veículo.',
  }
}
