# Class profile::base::linux
class profiles::base::linux {
  #include profiles::linux::admins
  include profiles::linux::firewall
  #include profiles::linux::limits
  #include profiles::linux::packages
  #include profiles::linux::selinux
  ##include profiles::linux::sshd
  #include profiles::linux::sudo
  #include profiles::linux::timesync
  #include profiles::linux::users


  if 'virtualbox' == $::facts['virtual'] {
    include profiles::linux::vagrant
  }  
}
