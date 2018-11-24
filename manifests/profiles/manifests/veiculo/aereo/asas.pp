class profiles::veiculo::aereo::asas{
  file { '/home/vagrant/peca_asas.txt' :
    ensure  => 'present',
    content => 'Asas de um veículo.',
  }
}
