node 'client.example.com' {

  user { 'bruno.siva' :
    ensure     => present,
    uid        => '1000',
    gid        => '1000',
    shell      => '/bin/bash',
    home       => '/home/bruno.silva',
  }


/*
  file {'/home/bruno.silva/file-env-dev.txt' :
    require => User['bruno.siva'],
    content => 'Arquivo criado para o ambiente DEV',
    ensure  => 'present',
  }
  */
}
