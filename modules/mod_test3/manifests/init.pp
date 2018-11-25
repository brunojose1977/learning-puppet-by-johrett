class mod_test3 {

  notify { 'xxx Hello ${::fqdn}. xxx' : }

  notify { "aaa Hello ${::fqdn}. aaa" : }

  notice ( "bbb Hello ${::fqdn}. bbb")    

  notify { 'notify test1' :
    message => 'yyy Hello ${::fqdn}. yyy',
  }

  notify { 'notify test2' :
      message  => lookup('fqdn'),
  }


  file{ '/home/vagrant/mod_test3_file.txt' :
    ensure  => 'present',
    content => 'Arquivo criado pelo mod_test3',
  }
}
