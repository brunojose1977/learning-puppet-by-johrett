class profiles::veiculo::aereo::motor{
  file { '/home/vagrant/peca_motor.txt' :
    ensure  => 'present',
    content => 'Motor de um veículo.',
  }
}
