require 'spec_helper'
describe 'role_storefront' do

  context 'with defaults for all parameters' do
    it { should contain_class('role_storefront') }
  end
end
