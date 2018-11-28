# Class: mod_etc_hosts_configure
# ===========================
#
# Objetivo é configurar o /etc/host dos nodes do video@rnp
#

#
# Authors
# -------
#
# Author Bruno Silva <bruno.silva@rnp.br>
#
#
class mod_etc_hosts_configure {

  file { '/etc/hosts' :
    ensure  => file,
    content => epp('mod_etc_hosts_configure/hosts.epp'),
  }

}
