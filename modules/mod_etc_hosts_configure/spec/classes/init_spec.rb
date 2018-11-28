require 'spec_helper'
describe 'mod_etc_hosts_configure' do
  context 'with default values for all parameters' do
    it { should contain_class('mod_etc_hosts_configure') }
  end
end
