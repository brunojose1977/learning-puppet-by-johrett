class profiles::veiculo::aereo::trempouso{
  file { '/home/vagrant/peca_trempouso.txt' :
    ensure  => 'present',
    content => 'Trempouso de um veículo.',
  }
}
