require 'spec_helper'
describe 'setup_lvm' do

  context 'with defaults for all parameters' do
    it { should contain_class('setup_lvm') }
  end
end
