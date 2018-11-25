require 'spec_helper'
describe 'mod_dados_cadastrais' do
  context 'with default values for all parameters' do
    it { should contain_class('mod_dados_cadastrais') }
  end
end
