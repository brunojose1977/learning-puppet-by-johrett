class mod_test3 {

  notify { "aaa Hello ${::fqdn}. aaa" : }

  notify { 'notify test2' :
      message  => lookup('fqdn'),
  }

  file{ '/home/vagrant/mod_test3_file.txt' :
    ensure  => 'present',
    content => 'Arquivo criado pelo mod_test3',
  }
}
