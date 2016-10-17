require 'spec_helper'
describe 'makeAWS' do

  context 'with defaults for all parameters' do
    it { should contain_class('makeAWS') }
  end
end
