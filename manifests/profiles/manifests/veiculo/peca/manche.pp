class profiles::veiculo::peca::manche{
  file { '/home/vagrant/peca_manche.txt' :
    ensure  => 'present',
    content => 'manche de um veículo.',
  }
}
