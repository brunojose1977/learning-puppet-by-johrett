class mod_test3 {
  file{ '/home/vagrant/mod_test3_file.txt' :
    ensure  => 'present',
    content => 'Arquivo criado pelo mod_test3',
  }
}
