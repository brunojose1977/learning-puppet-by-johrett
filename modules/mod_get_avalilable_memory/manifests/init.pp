class mod_get_avalilable_memory {

  $available_system_memory = lookup('available_system_memory')

  Notify { 'show availble system memory' :
    message => '\n\n
    Available System Memory: ${$available_system_memory}
    \n\n'
    
  }

}
