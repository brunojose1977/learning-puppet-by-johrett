class mod_create_folders {

  exec { 'create folder projetos':
    command => 'mkdir /home/vagrant/projetos',
    path => '/usr/bin:/usr/sbin:/bin:/usr/local/bin',
    # refreshonly => true,
  }

  notify{ 'projetos folder notification' :
    message => "\n\n Criada a pasta projetos\n\n"    
  }

}
