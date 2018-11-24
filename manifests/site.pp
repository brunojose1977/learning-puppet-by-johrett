node 'web1.example.com' {
  include roles::teste::exercicios
  include roles::veiculo::aereo::aviao
}

node 'web1.example.com' {
  include roles::veiculo::terrestre::carro
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
