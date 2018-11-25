class mod_test3 {
  file{ '/home/vagrant/mod_test3/dir_child1/dir_child2' :
    ensure  => 'directory',
    content => 'Arquivo criado pelo módulo mod_test3.',
    recurse => true,
    recurselimit => 2
  }
}
