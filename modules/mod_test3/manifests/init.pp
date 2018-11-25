##Bruno Silva
# função deste módulo é testar o uso do facter tanto no hiera como
# diretamento dentro do manifesto
class mod_test3 {
  ## way 1
    notify { "W1 - O FNDN desse node é ${::fqdn}" : } #doing interpolation here

    notify { 'blank_line_1' :
        message  => "                      ",
    }

  ## way 2
    notify { 'W2 - Show fqdn from facter' :
        message  => "W2 - FNDN desse node é ${::fqdn}", #interpolation here
        withpath => false,
    }

    ## the same as command: facter system_uptime.seconds
    notify { 'W2 - System Uptime' :
      message => "W2 - System is uptime for {${::system_uptime['seconds']}/60} seconds."
    }

    notify { 'blank_line_2' :
        message  => "                      ",
        withpath => false,
    }

  ## way 3
    notify { ' W3 - show text from hiera' :
        message  => lookup('the_fqdn'),
        withpath => false,
    }

}
