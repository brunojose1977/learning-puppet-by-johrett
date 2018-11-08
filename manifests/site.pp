node 'client.example.com' {

  file {'/home/vagrant/file-env-dev.txt' :
    content => 'Arquivo criado para o ambiente DEV',
    ensure  => 'present',
  }

}
