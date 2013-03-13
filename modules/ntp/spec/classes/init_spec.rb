require 'spec_helper'

describe 'ntp' do
  it { should include_class('ntp::install') }
  it { should include_class('ntp::service') }
  it { should include_class('ntp::config') }
end
