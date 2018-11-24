class roles::veiculo::terrestre::carro{
  include profiles::veiculo::peca::cabine
  include profiles::veiculo::peca::motor
  include profiles::veiculo::peca::bancos
  include profiles::veiculo::peca::suspensao
  include profiles::veiculo::peca::rodas
  include profiles::veiculo::peca::volante
}
