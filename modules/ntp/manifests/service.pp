class ntp::service {
  service {
    'ntpd':
      ensure  => running,
      enable  => true,
      require => Package['ntp'];
    'ntpdate':
      ensure  => running,
      enable  => true,
      require => Package['ntpdate'];
  }
}
