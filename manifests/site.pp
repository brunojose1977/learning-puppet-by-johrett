node 'client.example.com' {
  file {'/home/vagrant/client.txt' :
    content => 'Conteúdo de DEV.',
    ensure  => 'present',
  }
}

/*
node 'web.dev.example.com' {
  file {'/home/vagrant/content.txt' :
    content => 'Conteúdo do ambiente de DEV.',
    ensure  => 'present',
  }
}
*/
