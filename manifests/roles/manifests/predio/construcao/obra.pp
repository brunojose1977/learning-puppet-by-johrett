class roles::predio::construcao::obra{
  include construcao_civil::alvenaria::concreto
  include construcao_civil::alvenaria::tijolo
  include construcao_civil::acabamento::pintura
  include construcao_civil::acabamento::piso
  include construcao_civil::eletrica::sistema_eletrico
  include construcao_civil::play::completo
}
