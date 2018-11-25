node 'web1.example.com' {
  include roles::teste::exercicios
  include roles::veiculo::aereo::aviao
  include ::mod_test
  include ::mod_test2
  include ::mod_test3
  include ::mod_dados_cadastrais
}

node 'web2.example.com' {
  include roles::casa::padrao
  include ::mod_test3
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

/*
notify { 'Dados do Hiera - Frase':
    message  => lookup('frase'),
}

notify { 'Dados do Hiera - Autor':
    message  => lookup('autor'),
}
*/
