class profiles::veiculo::aereo::calda{
  file { '/home/vagrant/peca_calda.txt' :
    ensure  => 'present',
    content => 'Calda de um veículo.',
  }
}
