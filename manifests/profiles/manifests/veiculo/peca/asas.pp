class profiles::veiculo::peca::asas{
  file { '/home/vagrant/peca_asas.txt' :
    ensure  => 'present',
    content => 'Asas de um veículo.',
  }
}
