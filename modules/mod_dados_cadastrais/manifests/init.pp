##Bruno Silva
# Novembro 2018
# Treinamento em puppet
# Objetivo desse módulo exercita os seguinte conhecimentos:
# * criação de módulo
# * manuzeio de Hiera
#   * Escrita do commons.yaml (hieradata)
#   * Recuperação de atributos do Hiera a partir do módulo
# * manuzeio do facter
#   * Recuperação de dados do Facter a partir do common.yaml (hieradata)
#   * Recuperação de dados do Facter a partir do módulo mod_dados_cadastrais
#
# Localização desse módulo: /etc/puppetlabs/code/environments/dev/modules/mod_dados_cadastrais
class mod_dados_cadastrais {

  #Carga de dados cadastrais do Hieradata - common.yaml

  $empresa          = lookup('empresa')
  $departamento     = lookup('departamento')
  $cargo            = lookup('cargo')
  $ramal            = lookup('ramal')
  $modelo_de_disco  = lookup('modelo_de_disco')
  #$tamanho_do_disco = lookup('tamanho_de_disco')

/*
  notify { 'Impressão de dados cadastrais' :
    message => "\n\n
    ## DADOS CADASTRAIS                                     \n
    empresa                 : ${empresa}
    departamento            : ${departamento}
    cargo                   : ${cargo}
    ramal                   : ${ramal}
    modelo de disco         : ${modelo_de_disco}
    tamanho do disco        : ${::disks['sda']['size']}
    "
  }
  */


  notify { "O FNDN desse node é ${::fqdn}" : } #doing interpolation here
  notify { "O Modelo do disco é ${::disks['sda']['size']}" : }
}
