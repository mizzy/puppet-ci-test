class base_files {
  file {
    [
      '/etc/cron.daily/logwatch',
      '/etc/cron.daily/makewhatis.cron',
      '/etc/cron.weekly/makewhatis.cron',

      '/etc/cron.daily/00-logwatch',
      '/etc/cron.daily/0logwatch',
      '/etc/cron.daily/00-makewhatis.cron',
      '/etc/cron.weekly/00-makewhatis.cron',

      '/etc/cron.daily/slocate.cron',
      '/etc/cron.daily/mlocate.cron',
    ]:
    mode => 644;
  }


  file {
    '/root/bin':
      ensure => 'directory';
    '/etc/paperboy':
      ensure => 'directory';
    '/usr/local/app':
      ensure => 'directory';
    '/etc/screenrc':
      source => "puppet:///modules/base_files/etc/screenrc";
  }
}
