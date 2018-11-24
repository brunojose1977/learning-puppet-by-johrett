class roles::casa::construcao::obra{
  include construcao-civil::alvenaria::concreto
  include construcao-civil::alvenaria::tijolo
  include construcao-civil::acabamento::pintura
  include construcao-civil::acabamento::piso
  include construcao-civil::eletrica::sistema-eletrico
}
