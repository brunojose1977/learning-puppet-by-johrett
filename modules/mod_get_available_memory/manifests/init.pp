class mod_get_available_memory {

  $available_system_memory = lookup('available_system_memory')
  $filename                = lookup('filename')
  $url_module_file = "puppet:///modules/mod_get_available_memory/${filename}"

  Notify { 'show availble system memory' :
    message => "\n\n
    Available System Memory: ${available_system_memory}
    \n\n"
  }

  file{ "/home/vagrant/${filename}" :
    ensure => 'present',
    #source => "puppet:///modules/mod_get_available_memory/${filename} ",
    source => $url_module_file,
  }

  notify { "\n\nA file ${filename} was installed on your system!\n\n" : }

}
