require 'spec_helper'
describe 'grub' do

  context 'with defaults for all parameters' do
    it { should contain_class('grub') }
  end
end
