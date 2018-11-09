node 'web.dev.example.com' {
  file {'/home/vagrant/content.txt' :
    content => 'Conteúdo do ambiente de DEV.',
    ensure  => 'present',
  }
}
