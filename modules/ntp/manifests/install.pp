class ntp::install {
  package {
    [
      'ntp',
      'ntpdate',
    ]:
    ensure => present,
  }
}
