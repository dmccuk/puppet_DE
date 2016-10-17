class httpd {
  
  package { 'httpd':
    ensure => '2.2.15-54.el6.centos',
  }
  service { 'httpd':
    ensure => 'running',
    enable => 'true',
  }
}
