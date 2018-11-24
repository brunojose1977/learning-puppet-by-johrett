node default {
  if 'Linux' == $::facts['kernel'] {
    include profiles::base::linux
  }
}

node 'puppet.example.com' {
  include roles::puppet::monolitico
}

node 'web1.example.com' {
  file {'/home/vagrant/publicacao.txt' :
    content => 'Conteúdo em ambiente DEV',
    ensure  => 'present',
  }

  ## inicio do meu código de teste

  file '/home/vagrant/teste01.txt': {
    ensure => 'present',
    content => 'Conteúdo do arquivo teste01.txt',
  }

  file '/home/vagrant/teste02.txt': {
    ensure => 'present',
    content => 'Conteúdo do arquivo teste02.txt',
  }

  ## fim do meu código de teste

}

notify { 'Dados do Hiera - Frase':
    message  => lookup('frase'),
}

notify { 'Dados do Hiera - Autor':
    message  => lookup('autor'),
}
