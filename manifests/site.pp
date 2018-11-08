node 'client.example.com' {

  file {'/home/vagrant/file-env-prod.txt' :
    content => 'Conteúdo levado para o ambiente de PRODUCTION',
    ensure  => 'present',
  }

}
