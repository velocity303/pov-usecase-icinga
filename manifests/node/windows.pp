class profile_icinga::nodes::windows {
  class { 'nsclient':
    allowed_hosts           => ['192.168.1.0/24', '192.168.2.0/24', '192.168.3.0/24'],
    config_template         => 'profile/nsclient.ini.erb',
  }
  @@file { "/etc/icinga2/conf.d/hosts/${fqdn}.conf":
    ensure  => present,
    content => template('profile/icinga2_node.conf.erb'),
    notify  => Service['icinga2'],
    tag     => 'icinga2',
  }
}
