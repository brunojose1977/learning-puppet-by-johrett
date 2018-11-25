##Bruno Silva
# função deste módulo é testar o uso do facter tanto no hiera como
# diretamento dentro do manifesto
class mod_test3 {
  ## way 1

    notify { "O FNDN desse node é ${::fqdn}" : } #doing interpolation here

    notify { '** bloco de notificações 1 ** XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx' : }

  ## way 2

    notify { 'show fqdn from facter' :
        message  => "O FNDN desse node é ${::fqdn}", #interpolation here
    }

    notify { '** bloco de notificações 2 ** XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx' : }

  ## way 3

    notify { 'show text from hiera' :
        message  => lookup('the_fqdn'),
    }

    notify { 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx' : }
}
