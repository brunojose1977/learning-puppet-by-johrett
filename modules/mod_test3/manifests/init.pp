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
    ## the same as command: facter os.family
    ## the same as command: facter os.name
    ## the same as command: facter os.hardware
    notify { 'W2 - System Uptime' :
      message => "
        W2 - System is uptime for ${::system_uptime['seconds']} seconds.\n
        W2 - OS Family ${::os['family']}\n.
        W2 - OS Distribution ${::os['name']}.\n
        W2 - OS Hardware ${::os['hardware']}.
      "
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
