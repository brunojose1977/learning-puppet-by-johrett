node 'web1.example.com' {
  include roles::teste::exercicios
  include roles::veiculo::aereo::aviao
}

node 'web2.example.com' {
  include roles::casa::padrao
}

node 'web3.example.com' {
  include roles::predio::padrao
}

node default {
  if 'Linux' == $::facts['kernel'] {
    include profiles::base::linux
  }
}

node 'puppet.example.com' {
  include roles::puppet::monolitico
}

notify { 'Dados do Hiera - Frase':
    message  => lookup('frase'),
}

notify { 'Dados do Hiera - Autor':
    message  => lookup('autor'),
}
