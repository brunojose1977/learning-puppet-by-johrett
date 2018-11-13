node 'puppet.example.com' {
    class {'::mcollective':
      middleware  => true,
      client      => true,
      middleware_hosts => ['puppet.example.com'],
    }
}

node 'web1.example.com' {
  file {'/home/vagrant/publicacao.txt' :
    content => 'Conteúdo em ambiente DEV',
    ensure  => 'present',
  }

  notify { 'Dados do Hiera - Frase':
    message  => lookup('frase'),
  }

  notify { 'Dados do Hiera - Autor':
    message  => lookup('autor'),
  }
}
