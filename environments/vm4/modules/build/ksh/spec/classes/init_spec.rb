require 'spec_helper'
describe 'ksh' do

  context 'with defaults for all parameters' do
    it { should contain_class('ksh') }
  end
end
