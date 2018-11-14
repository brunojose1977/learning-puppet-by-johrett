# Configura o usuario do Vagrant
class profiles::linux::vagrant {

  require profiles::linux::sudo

  user { 'vagrant':
    ensure => present,
  }

  sudo::conf { 'vagrant':
    priority => 10,
    content  => '%vagrant ALL=(ALL) NOPASSWD: ALL',
  }
}
