class mod_yum_update {

  exec { 'Atualiza So by yum update':
    command => 'yum update -y',
    path    => '/usr/bin:/usr/sbin:/bin:/usr/local/bin',
    # refreshonly => true,
  }
}
