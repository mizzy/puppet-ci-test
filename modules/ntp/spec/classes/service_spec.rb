require 'spec_helper'

describe 'ntp::service' do
  it { should contain_service('ntpd') }
  it { should contain_service('ntpdate') }
end
