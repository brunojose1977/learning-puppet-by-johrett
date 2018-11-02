
notify { 'localizacao do hiera data - common.yaml':
  message  => lookup('localizacao')
}

notify { 'frase configurada':
  message  => lookup('frase')
}

notify { 'So existe no common':
  message  => lookup('so_no_common')
}

notify { 'So existe no os Redhat':
  message  => lookup('so_no_os')
}

notify { 'So existe no hostname puppetserver':
  message  => lookup('so_no_hostname')
}




