# Class profiles::linux::sudo
class profiles::linux::sudo {
  class{ 'sudo':
    purge => false,
  }

  sudo::conf { 'admins-sudo':
    priority => 10,
    content  => "%sudo	ALL=(ALL)	ALL",
  }

  sudo::conf { 'admins-wheel':
    priority => 11,
    content  => "%wheel	ALL=(ALL)	ALL",
  }
}
