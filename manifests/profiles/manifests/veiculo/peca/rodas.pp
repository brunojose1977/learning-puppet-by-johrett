class profiles::veiculo::peca::rodas{
  file { '/home/vagrant/peca_rodas.txt' :
    ensure  => 'present',
    content => 'rodas de um veículo.',
  }
}
