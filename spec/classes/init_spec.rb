require 'spec_helper'
describe 'ipcalc' do

  context 'with defaults for all parameters' do
    it { should contain_class('ipcalc') }
  end
end
