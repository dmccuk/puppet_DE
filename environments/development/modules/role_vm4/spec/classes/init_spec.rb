require 'spec_helper'
describe 'role_vm4' do

  context 'with defaults for all parameters' do
    it { should contain_class('role_vm4') }
  end
end
