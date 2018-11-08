node 'client.example.com' {
  /*
  user { 'bruno.siva' :
    home   => '/home/bruno.silva',
    ensure => 'absent',
  }
  */

  file {'/home/bruno.silva/file-env-dev.txt' :
    ##require => User['bruno.siva'],
    content => 'Arquivo criado para o ambiente DEV',
    ensure  => 'absent',
  }
}
