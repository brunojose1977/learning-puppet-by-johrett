require 'spec_helper'
describe 'mod_generate_file_link' do
  context 'with default values for all parameters' do
    it { should contain_class('mod_generate_file_link') }
  end
end
