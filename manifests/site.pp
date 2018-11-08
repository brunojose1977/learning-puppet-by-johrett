node 'client.example.com' {
  user { 'bruno.siva' :
    home   => '/home/bruno.silva',
    ensure => 'present',
  }

  file {'/home/bruno.silva/file-env-dev.txt' :
    content => 'Arquivo criado para o ambiente DEV',
    ensure => 'present',
  }
}
