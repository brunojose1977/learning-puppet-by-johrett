class mod_test3 {
  file{ '/home/vagrant/mod_test3/dir_child1/dir_child2' :
    ensure  => 'directory',
    recurse => true,
    recurselimit => 10,
    purge => true, # purge all unmanaged junk
    force => true, # also purge subdirs and links etc.
  }
}
