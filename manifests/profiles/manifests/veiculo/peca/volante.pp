class profiles::veiculo::peca::volante{
  file { '/home/vagrant/peca_volante.txt' :
    ensure  => 'present',
    content => 'volante de um veículo.',
  }
}
