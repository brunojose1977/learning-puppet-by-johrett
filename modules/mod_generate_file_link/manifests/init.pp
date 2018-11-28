class mod_generate_file_link {


  file { '/home/vagrant/mirrored_folder' :
    ensure => directory,
  }


  ## criando o link simbólico
  file { '/home/vagrant/original_folder' :
    ensure => link,
    target => '/home/vagrant/mirrored_folder',
  }

  notify { 'Resumo da Execução do Módulo' :
    message => "
    \n\n Foram criados dois diretórios e depois foi feito um link simbólico entre eles:\n
      /home/vagrant/original_folder ----> /home/vagrant/mirrored_folder \n\n

      A partir de agora, tudo fica espelhado entre esses dois diretórios.

    \n\n"
  }

  file { '/home/vagrant/original_folder/sample.txt' :
    ensure => 'file',
    content => 'This is a original file placed in a original folder.',
  }

}
