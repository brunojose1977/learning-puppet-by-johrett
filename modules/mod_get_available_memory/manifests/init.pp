class mod_get_available_memory {

  $available_system_memory = lookup('available_system_memory')
  $filename                = lookup('filename')

  Notify { 'show availble system memory' :
    message => "\n\n
    Available System Memory: ${available_system_memory}
    \n\n"
  }

  file{ '/home/vagrant/memory.txt' :
    ensure => 'present',
    source => "puppet:///modules/mod_get_available_memory/${filename} ",
  }

  notify { "\n\nA file ${filename} was installed on your system!\n\n" : }

}
