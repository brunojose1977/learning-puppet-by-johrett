class profiles::veiculo::peca::cabine{
  file { '/home/vagrant/peca_cabine.txt' :
    ensure  => 'present',
    content => 'Cabine de um veículo.',
  }
}
