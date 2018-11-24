class profiles::veiculo::aereo::cabine{
  file { '/home/vagrant/peca_cabine.txt' :
    ensure  => 'present',
    content => 'Cabine de um veículo.',
  }
}
