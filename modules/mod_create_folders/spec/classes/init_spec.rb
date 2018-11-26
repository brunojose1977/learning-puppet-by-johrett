require 'spec_helper'
describe 'mod_create_folders' do
  context 'with default values for all parameters' do
    it { should contain_class('mod_create_folders') }
  end
end
