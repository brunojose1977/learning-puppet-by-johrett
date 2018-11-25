class mod_test3 {
  file{ '/home/vagrant/mod_test3/dir_child1/dir_child2' :
    ensure  => 'directory',
    source => '/home/vagrant/mod_test3/dir_child1/dir_child2',
    recurse => true,
    recurselimit => 3,
  }
}
