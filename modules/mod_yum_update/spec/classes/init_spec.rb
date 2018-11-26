require 'spec_helper'
describe 'mod_yum_update' do
  context 'with default values for all parameters' do
    it { should contain_class('mod_yum_update') }
  end
end
