node 'client.example.com' {
  file {'/home/vagrant/file-env-prod.txt' :
    content => 'Conteúdo levado para o ambiente de PRODUCTION',
    ensure  => 'present',
  }
}

node 'web.dev.example.com' {
  file {'/home/vagrant/content.txt' :
    content => 'Conteúdo do ambiente de DEV.',
    ensure  => 'present',
  }
}

node 'web.hmg.example.com' {
  file {'/home/vagrant/content.txt' :
    content => 'Conteúdo do ambiente HMG.',
    ensure  => 'present',
  }
}

node 'web.prd.example.com' {
  file {'/home/vagrant/content.txt' :
    content => 'Conteúdo do ambiente PRD,',
    ensure  => 'present',
  }
}
