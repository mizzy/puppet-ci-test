require 'spec_helper'

describe 'base_files' do
  it { should contain_file('/etc/cron.daily/logwatch') }
  it { should contain_file('/etc/cron.daily/makewhatis.cron') }
  it { should contain_file('/etc/cron.weekly/makewhatis.cron') }
  it { should contain_file('/etc/cron.daily/00-logwatch') }
  it { should contain_file('/etc/cron.daily/0logwatch') }
  it { should contain_file('/etc/cron.daily/00-makewhatis.cron') }
  it { should contain_file('/etc/cron.weekly/00-makewhatis.cron') }
  it { should contain_file('/etc/cron.daily/slocate.cron') }
  it { should contain_file('/etc/cron.daily/mlocate.cron') }
  it { should contain_file('/root/bin') }
  it { should contain_file('/etc/paperboy') }
  it { should contain_file('/usr/local/app') }
  it { should contain_file('/etc/screenrc') }
end
