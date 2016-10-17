class ksh {
  
  package { 'ksh':
    ensure => 'absent',
  }
  service { 'ksh':
    ensure => 'stopped',
    enable => 'false',
  }
}
