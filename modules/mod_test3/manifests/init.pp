class mod_test3 {
  file{ '/home/vagrant/mod_test3/mod_test3_file.txt' :
    ensure  => 'present',
    content => 'Arquivo criado pelo módulo mod_test3.',
    recurse => true,
  }
}
