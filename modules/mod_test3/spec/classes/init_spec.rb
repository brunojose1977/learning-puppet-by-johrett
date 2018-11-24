require 'spec_helper'
describe 'mod_test3' do
  context 'with default values for all parameters' do
    it { should contain_class('mod_test3') }
  end
end
