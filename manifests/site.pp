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
}

notify { 'Dados do Hiera - Frase':
    message  => lookup('frase'),
}

notify { 'Dados do Hiera - Autor':
    message  => lookup('autor'),
}
