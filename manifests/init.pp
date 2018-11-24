class arquivos_web1{

  file { '/home/vagrant/teste01.txt' :
    ensure  => 'present',
    content => 'Valor do arquivo teste01.txt',
  }

  file { '/home/vagrant/teste02.txt' :
    ensure  => 'present',
    content => 'Conteúdo do arquivo teste02.txt',
  }

}
