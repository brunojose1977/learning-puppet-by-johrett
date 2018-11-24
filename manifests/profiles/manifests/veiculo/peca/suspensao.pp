class profiles::veiculo::peca::suspensao{
  file { '/home/vagrant/peca_suspensao.txt' :
    ensure  => 'present',
    content => 'suspensao de um veículo.',
  }
}
