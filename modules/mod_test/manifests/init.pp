class mod_test {
  /*
  Bruno Silva
  Test Module = The objetictive is simple write a file mod_test_file.txt inside de node.
  */
  file{ '/home/vagrant/mod_test_file.txt' :
    ensure => 'present',
    content => 'Arquivo criado pelo módulo mod_test.',
  }
}
