require 'spec_helper'
describe 'mod_get_avalilable_memory' do
  context 'with default values for all parameters' do
    it { should contain_class('mod_get_avalilable_memory') }
  end
end
