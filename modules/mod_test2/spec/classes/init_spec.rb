require 'spec_helper'
describe 'mod_test2' do
  context 'with default values for all parameters' do
    it { should contain_class('mod_test2') }
  end
end
