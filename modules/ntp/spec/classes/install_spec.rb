require 'spec_helper'

describe 'ntp::install' do
  it { should contain_package('ntp') }
  it { should contain_package('ntpdate') }
end
