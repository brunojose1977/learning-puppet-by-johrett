node 'client.example.com' {
  file {'/home/vagrant/publicacao.txt' :
    content => 'Conteúdo de client.example.com',
    ensure  => 'present',
  }
}

node 'web1.example.com' {
  file {'/home/vagrant/publicacao.txt' :
    content => 'Conteúdo em ambiente DEV',
    ensure  => 'present',
  }
}

/*
node 'web2.example.com' {
  file {'/home/vagrant/publicacao.txt' :
    content => 'Conteúdo em ambiente APPROVAL',
    ensure  => 'present',
  }
}

node 'web3.example.com' {
  file {'/home/vagrant/publicacao.txt' :
    content => 'Conteúdo em ambiente PRODUCTION',
    ensure  => 'present',
  }
}
*/
