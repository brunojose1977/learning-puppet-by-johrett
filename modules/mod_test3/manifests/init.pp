##Bruno Silva
# função deste módulo é testar o uso do facter tanto no hiera como
# diretamento dentro do manifesto
class mod_test3 {
  ## way 1
    notify { "\nW1 - O FNDN desse node é ${::fqdn}\n\n" : } #doing interpolation here


  ## way 2
    notify { 'W2 - Show fqdn from facter' :
        message  => "\n\n W2 - FNDN desse node é ${::fqdn} \n\n", #interpolation here
        withpath => false,
    }

    ## the same as command: facter system_uptime.hours
    ## the same as command: facter os.family
    ## the same as command: facter os.name
    ## the same as command: facter os.hardware
    notify { 'W2 - System Uptime' :
      message => "\n\n
      -------------------------------------------------------------\n
      W2 - FQDN                : ${::fqdn}.                        \n
      W2 - System is uptime for: ${::system_uptime['hours']} hours.\n
      W2 - OS Family           : ${::os['family']}.                \n
      W2 - OS Distribution     : ${::os['name']}.                  \n
      W2 - OS Hardware         : ${::os['hardware']}.              \n
      -------------------------------------------------------------\n\n
      "
    }

  ## way 3
    notify { 'W3 - show text from hiera' :
        message  => lookup('the_fqdn'),
        withpath => false,
    }

}
