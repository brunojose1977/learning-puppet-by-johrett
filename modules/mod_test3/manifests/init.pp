class mod_test3 {

  notify {
    "### Hello ${::fqdn}, now mod_test3 will be applyed. ###":
  }

  notice("@@@ Hello ${::fqdn}, now mod_test3 will be applyed. @@@")


  file{ '/home/vagrant/mod_test3_file.txt' :
    ensure  => 'present',
    content => 'Arquivo criado pelo mod_test3',
  }
}
