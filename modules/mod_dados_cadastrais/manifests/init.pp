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

  #$departamentox = lookup('departamento')

  notify { 'Impressão de dados cadastrais' :
    message => "\n\n
    ## DADOS CADASTRAIS                                     \n
    empresa                 :
    departamento            : $departamento
    cargo                   : $cargo
    ramal                   : $ramal
    modelo de disco         : $modelo_de_disco
    tamanho do disco        : ${::disks['sda']['size']}
    "
  }
}
